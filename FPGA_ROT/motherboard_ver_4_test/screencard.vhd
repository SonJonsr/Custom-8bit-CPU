LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

-- For VGA 60HZ 640x480
--
-- Pixel clock (MHz) = 25.175 
--    Most modern screen also supports a slight deviation from this.
--    25MHz works just as well as 25.175MHz, only with a slighly
--    slower refresh rate for the screen. 59.9Hz compared to 59.5Hz.
--
-- Horizontal
-- Sync pulse = 96
-- Front porch = 16
-- Back porch = 48
-- Hsync polarity = n
-- 
-- Vertical 
-- Sync pulse = 2
-- Front porch = 10
-- Back porch = 33
-- Vsync polarity = n

ENTITY screencard IS
  GENERIC(
  -- Display memory start
    main_display_adr : unsigned(15 downto 0) := x"E000";
    info_display_adr : unsigned(15 downto 0) := x"EF00";
  -- Horizontal
    h_pixels : INTEGER := 640;
    h_front_porch : INTEGER := 16;
    h_sync_pulse : INTEGER := 96;
    h_back_porch : INTEGER := 48;
    h_polarity : STD_LOGIC := '0';
  -- Vertical
    v_pixels : INTEGER := 480;
    v_front_porch : INTEGER := 10;
    v_sync_pulse : INTEGER := 2;
    v_back_porch : INTEGER := 33;
    v_polarity : STD_LOGIC := '0'
  );
  PORT ( 
    pixel_clk   : IN STD_LOGIC;
    rst_n       : IN STD_LOGIC;

    -- Interface med minnet
    dat         : IN  STD_LOGIC_VECTOR(7 downto 0);
    adr         : OUT STD_LOGIC_VECTOR(15 downto 0);
    
    -- Interface med VGA-kabel
    VGA_CLK     : OUT STD_LOGIC;
    VGA_BLANK_N : OUT STD_LOGIC;
    VGA_SYNC_N  : OUT STD_LOGIC;
    VGA_HS      : OUT STD_LOGIC;
    VGA_VS      : OUT STD_LOGIC;
    VGA_R       : OUT STD_LOGIC_VECTOR(7 downto 0);
    VGA_G       : OUT STD_LOGIC_VECTOR(7 downto 0);
    VGA_B       : OUT STD_LOGIC_VECTOR(7 downto 0)
  );
END ENTITY;

ARCHITECTURE RTL OF screencard IS
  TYPE a_16 is array (0 to 15) of STD_LOGIC_VECTOR(23 downto 0); 
  TYPE a_8 is array (0 to 7) of STD_LOGIC_VECTOR(23 downto 0);
  type display_modes is (MAIN, INFO);

  SIGNAL foreground_color_array : a_16 := (
    (x"FFFFFF"),  -- WHITE    0
    (x"C0C0C0"),  -- SILVER   1
    (x"808080"),  -- GRAY     2
    (x"000000"),  -- BLACK    3
    (x"FF0000"),  -- RED      4
    (x"800000"),  -- MAROON   5
    (x"FFFF00"),  -- YELLOW   6
    (x"808000"),  -- OLIVE    7
    (x"00FF00"),  -- LIME     8
    (x"008000"),  -- GREEN    9
    (x"00FFFF"),  -- AQUA     A
    (x"008080"),  -- TEAL     B
    (x"0000FF"),  -- BLUE     C
    (x"000080"),  -- NAVY     D
    (x"FF00FF"),  -- FUCHSIA  E
    (x"800080")); -- PURPLE   F

  SIGNAL background_color_array : a_8 := (
    (x"FFFFFF"),  -- WHITE    0
    (x"808080"),  -- GRAY     1
    (x"000000"),  -- BLACK    2
    (x"FF0000"),  -- RED      3
    (x"00FF00"),  -- LIME     4
    (x"0000FF"),  -- BLUE     5
    (x"FFFF00"),  -- YELLOW   6
    (x"FF00FF")); -- FUCHSIA  7
  

  -- COMPONENT DECLARATIONS --
  COMPONENT font IS
    PORT ( 
      ascii_ucode : IN  STD_LOGIC_VECTOR(7 DOWNTO 0); -- ASCII-hex for ønsket karakter
      row         : IN  INTEGER RANGE 15 DOWNTO 0;
      char_line   : OUT STD_LOGIC_VECTOR(0 to 7)
    );
  END COMPONENT;

  COMPONENT vga_adapter IS
    PORT ( 
      pixel_clk   : IN  STD_LOGIC;
      reset_n     : IN  STD_LOGIC;
      h_sync      : OUT STD_LOGIC;
      v_sync      : OUT STD_LOGIC;
      blank_n     : OUT STD_LOGIC;
      sync_n      : OUT STD_LOGIC;
      display_en  : OUT STD_LOGIC;
      column      : OUT INTEGER range (h_pixels - 1) downto 0;
      row         : OUT INTEGER range (v_pixels - 1) downto 0
    );
  END COMPONENT;
  -- END OF COMPONENT DECLARATIONS --

  -- SIGNALS COMPONENTS --
  SIGNAL display_en : STD_LOGIC;
  SIGNAL column     : INTEGER range (h_pixels - 1) downto 0;
  SIGNAL row        : INTEGER range (v_pixels - 1) downto 0;
  SIGNAL char_line  : STD_LOGIC_VECTOR(0 to 7);
  SIGNAL adr_int    : INTEGER range 5000 downto 0 := 0;
  
  -- SIGNAL FONT --
  SIGNAL ascii : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL font_row : INTEGER RANGE 15 downto 0;

  -- SIGNALS INTERNAL --
  SIGNAL curr_char_line : STD_LOGIC_VECTOR(0 to 7);

  SIGNAL attributes : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL blink  : STD_LOGIC;
  SIGNAL background_color : STD_LOGIC_VECTOR(2 downto 0);
  SIGNAL foreground_color : STD_LOGIC_VECTOR(3 downto 0);
  SIGNAL blink_counter : INTEGER RANGE 63 downto 0 := 0;

  SIGNAL base_display_adr : unsigned(15 downto 0);


BEGIN
  VGA_CLK <= pixel_clk;

  font_row <= (row mod 16) + 1  when (column > h_pixels - 10) else row mod 16;
  
  vga_square_test : process(pixel_clk) is
    -- Variables that devides the screen into an 80x30 ascii array
    variable v_col_ascii : integer;
    variable v_row_ascii : integer;
    -- For better overview of what part of the screen we are drawing to
    variable v_display_mode : display_modes;
  begin
    if (rising_edge(pixel_clk)) then
      -- Converts the pixels to 80x30 for easier coding
      v_col_ascii := column / 8;
      v_row_ascii := row / 16;
      
      -- This statement finds what part of the screen we are on
      if v_col_ascii/63 = 0 or v_col_ascii = 79 then
        v_display_mode := MAIN;
      else
        v_display_mode := INFO;
      end if;

      -- Tells us we draw to the screen
      if (display_en = '1') then 
        if (column = 0 and row = 0) then -- Increment the blink_counter everytime the screen hits pixel 0x0
          blink_counter <= blink_counter + 1;
        end if;
        -- In this case we find the next ascii-line (8x1) we are going to draw to. Uses
        -- the current index of the column to decide current operation
        case column mod 8 is 
          -- In the first pixel of the line finds the address (*@\label{line:col_0}@*)
          when 0 => 

            case v_display_mode is
              when MAIN =>
                base_display_adr <= main_display_adr;
                -- Start of memory address finder for main screen (*@\label{start:screen_memory_address_finder}@*)
                -- depending on what ascii-pixel we are currently on we can deduce the next 
                -- ascii-pixel from these if-statements
                if v_col_ascii = 79 then -- for the ascii-pixels on the edge of the screen
                  if row mod 16 = 15 then -- for the ascii-pixels that are on the last row of the ascii character 
                    if v_row_ascii = 29 then -- for the last ascii-pixel on the screen
                      adr_int <= 0;
                    else
                      adr_int <= 64 * (v_row_ascii + 1) * 2;
                    end if;
                  else
                    adr_int <= 64 * v_row_ascii * 2;
                  end if;
                else -- for all the other ascii-pixels
                  adr_int <= (v_col_ascii + 1 + (64 * v_row_ascii)) * 2;
                end if; 
              -- End of memory address finder for main screen (*@\label{end:screen_memory_address_finder}@*)


              when INFO =>
                base_display_adr <= info_display_adr;
                -- for all the ascii-pixels in the info screen
                adr_int <= (v_col_ascii - 63 + (16 * v_row_ascii)) * 2;
            end case;

          -- In the second pixel start querying the RAM for the ASCII (*@\label{line:col_1}@*)
          when 1 =>
            adr <= STD_LOGIC_VECTOR(base_display_adr + to_unsigned(adr_int, adr'LENGTH));

          -- In the fourth pixel save the ASCII queryed from the RAM, and start the query for (*@\label{line:col_3}@*)
          -- attributes 
          when 3 =>
            ascii <= dat;
            adr <= STD_LOGIC_VECTOR(base_display_adr + to_unsigned(adr_int + 1, adr'LENGTH));

          -- In the sixth pixel save the attributes queryed from the RAM. (*@\label{line:col_5}@*)
          when 5 =>
            attributes <= dat;

          -- In the eight pixel save the char_line for the next ASCII character into  (*@\label{line:col_7}@*)
          -- curr_char_line. Also save all the attributes to each their signal.
          when 7 =>
            curr_char_line <= char_line;
            blink <= attributes(7);
            background_color <= attributes(6 downto 4);
            foreground_color <= attributes(3 downto 0);
          when others =>
        end case;

        -- START OF DRAWING ASCII PIXEL (*@\label{start:drawing_ascii}@*)
        -- this if-statement checks if the current pixel is part of the ASCII-character or not 
        if  (curr_char_line(column mod 8) = '0' or 
            (blink = '1' and blink_counter > 31)) then
          -- If the current pixel isn't part of the character display the background color
          VGA_R <= background_color_array(to_integer(unsigned(background_color)))(23 downto 16);
          VGA_G <= background_color_array(to_integer(unsigned(background_color)))(15 downto 8);
          VGA_B <= background_color_array(to_integer(unsigned(background_color)))(7 downto 0);
        else                                 
          -- If the current pixel is part of the character display the foreground color
          VGA_R <= foreground_color_array(to_integer(unsigned(foreground_color)))(23 downto 16);
          VGA_G <= foreground_color_array(to_integer(unsigned(foreground_color)))(15 downto 8);
          VGA_B <= foreground_color_array(to_integer(unsigned(foreground_color)))(7 downto 0);
        end if; 
      -- END OF DRAWING ASCII PIXEL (*@\label{end:drawing_ascii}@*)

      -- blanking time for the display
      -- Sends black.
      else 
        VGA_R <= (others => '0');
        VGA_G <= (others => '0');
        VGA_B <= (others => '0');
      end if;
    end if;
  end process;
  
  vga_adpater_1 : vga_adapter
    port map(
      pixel_clk => pixel_clk,
      reset_n => rst_n,
      h_sync => VGA_HS,
      v_sync => VGA_VS,
      blank_n => VGA_BLANK_N,
      sync_n => VGA_SYNC_N,
      display_en => display_en,
      column => column,
      row => row
    );

    font_inst : font
      port map(
        ascii_ucode => ascii,
        row => font_row,
        char_line => char_line
    );
    
END RTL;

