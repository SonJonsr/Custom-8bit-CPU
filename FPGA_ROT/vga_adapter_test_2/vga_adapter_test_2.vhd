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

ENTITY vga_adapter_test_2 IS
  PORT ( 
    CLOCK_50    : IN STD_LOGIC;
    KEY         : IN STD_LOGIC_VECTOR(3 downto 0);
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

ARCHITECTURE RTL OF vga_adapter_test_2 IS
  SIGNAL display_en : STD_LOGIC;
  SIGNAL column     : INTEGER;
  SIGNAL row        : INTEGER;

  COMPONENT vga_adapter IS
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
  COMPONENT pixel_clk_module IS
    PORT
    (
      areset		: IN STD_LOGIC  := '0';
      inclk0		: IN STD_LOGIC  := '0';
      c0		: OUT STD_LOGIC ;
      locked		: OUT STD_LOGIC 
    );
  END COMPONENT;

  signal CLOCK_25 : std_logic;
  signal locked : std_logic := '0';
  signal areset : std_logic := '0';
BEGIN
  VGA_CLK <= CLOCK_25;
  
  vga_square_test : process(CLOCK_50) is

    variable y_length : integer range 0 to 479 := 0;
    variable x_length : integer range 0 to 639 := 0;
  begin
    if (rising_edge(CLOCK_50)) then
      if (display_en = '1') then
        if (column mod 5 = 0 or row mod 6 = 0) then
          VGA_R <= (others => '1');
          VGA_G <= (others => '0');
          VGA_B <= (others => '0');
        else
          VGA_R <= (others => '0');
          VGA_G <= (others => '0');
          VGA_B <= (others => '1');
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
      pixel_clk => CLOCK_25,
      reset_n => KEY(3),
      h_sync => VGA_HS,
      v_sync => VGA_VS,
      blank_n => VGA_BLANK_N,
      sync_n => VGA_SYNC_N,
      display_en => display_en,
      column => column,
      row => row
    );
    pixel_clk_module_inst: pixel_clk_module
     port map(
        areset => areset,
        inclk0 => CLOCK_50,
        c0 => CLOCK_25,
        locked => locked
    );
END RTL;

