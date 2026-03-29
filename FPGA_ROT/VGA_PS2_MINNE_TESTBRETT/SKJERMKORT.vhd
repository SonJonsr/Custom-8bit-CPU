LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

--GJELDER 60HZ 640x480
--
-- Pixel clock (MHz) = 25.175
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

ENTITY SKJERMKORT IS
  GENERIC(
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
    dat         : IN  STD_LOGIC_VECTOR(15 downto 0);
    adr         : OUT STD_LOGIC_VECTOR(14 downto 0);
    
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

ARCHITECTURE RTL OF SKJERMKORT IS
  TYPE a_16 is array (0 to 15) of STD_LOGIC_VECTOR(0 to 23); 
  TYPE a_8 is array (0 to 7) of STD_LOGIC_VECTOR(0 to 23);

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
      char_line   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
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
  SIGNAL char_line  : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL adr_int    : INTEGER range 2399 downto 0 := 0;
  
  -- SIGNAL FONT --
  SIGNAL ascii : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL font_row : INTEGER RANGE 15 downto 0;

  -- SIGNALS INTERNAL --
  SIGNAL next_char_line : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL curr_char_line : STD_LOGIC_VECTOR(7 downto 0);

  SIGNAL attributes : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL blink  : STD_LOGIC;
  SIGNAL background_color : STD_LOGIC_VECTOR(2 downto 0);
  SIGNAL foreground_color : STD_LOGIC_VECTOR(3 downto 0);
  SIGNAL blink_counter : INTEGER RANGE 63 downto 0 := 0;



BEGIN
  VGA_CLK <= pixel_clk;

  font_row <= (row mod 16) + 1  when (column > h_pixels - 10) else row mod 16;
  
  vga_square_test : process(pixel_clk) is
  begin
    if (rising_edge(pixel_clk)) then
      if (display_en = '1') then
        if (column = 0 and row = 0) then
          blink_counter <= blink_counter + 1;
        end if;
        case column mod 8 is
          when 0 =>
            if (column > 630 and row mod 16 /= 15) then
              adr_int <= ((row/16) * 80);
            else
              if (adr_int >= 2399) then
                adr_int <= 0;
              else
                adr_int <= (column/8) + ((row/16) * 80) + 1;
              end if;
            end if;
          when 1 =>
            adr <= STD_LOGIC_VECTOR(to_unsigned(adr_int, adr'LENGTH));
          when 4 =>
            ascii <= dat(7 downto 0);
            attributes <= dat(15 downto 8);
          when 5 =>
            next_char_line <= char_line;
          when 7 =>
            curr_char_line <= next_char_line;
            blink <= attributes(7);
            background_color <= attributes(6 downto 4);
            foreground_color <= attributes(3 downto 0);
          when others =>
        end case;
        -- TEST FOR VGA ADAPTER
        -- if (row mod 16 = 0) then
        --   if (row = 0) then
        --     VGA_R <= (others => ('0'));
        --     VGA_G <= (others => ('1'));
        --     VGA_B <= (others => ('0'));
        --   else 
        --     VGA_R <= (others => ('1'));
        --     VGA_G <= (others => ('0'));
        --     VGA_B <= (others => ('1'));
        --   end if;
        -- elsif (column mod 8 = 0) then
        --   if (column = 0) then
        --     VGA_R <= (others => ('0'));
        --     VGA_G <= (others => ('1'));
        --     VGA_B <= (others => ('0'));
        --   else 
        --     VGA_R <= (others => ('1'));
        --     VGA_G <= (others => ('0'));
        --     VGA_B <= (others => ('1'));
        --   end if;
        -- else
        --     VGA_R <= (others => ('1'));
        --     VGA_G <= (others => ('1'));
        --     VGA_B <= (others => ('1'));
        -- end if;

        -- VGA-TEXT-MODE
        if  (curr_char_line(7 - (column mod 8)) = '0' or 
            (blink = '1' and blink_counter > 31)) then
          VGA_R <= background_color_array(to_integer(unsigned(background_color)))(16 to 23);
          VGA_G <= background_color_array(to_integer(unsigned(background_color)))(8 to 15);
          VGA_B <= background_color_array(to_integer(unsigned(background_color)))(0 to 7);
        else                                 
          VGA_R <= foreground_color_array(to_integer(unsigned(foreground_color)))(16 to 23);
          VGA_G <= foreground_color_array(to_integer(unsigned(foreground_color)))(8 to 15);
          VGA_B <= foreground_color_array(to_integer(unsigned(foreground_color)))(0 to 7);
        end if;
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

