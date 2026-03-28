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

ENTITY vga_adapter IS
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
    column      : OUT INTEGER;
    row         : OUT INTEGER
  );
END ENTITY;

ARCHITECTURE RTL OF vga_adapter IS
  CONSTANT h_period : INTEGER := h_pixels + h_front_porch + h_sync_pulse + h_back_porch;
  CONSTANT v_period : INTEGER := v_pixels + v_front_porch + v_sync_pulse + v_back_porch;

  TYPE state_for_display is (DISPLAY, FRONT_PORCH, SYNC_PULSE, BACK_PORCH);
  SIGNAL h_state : state_for_display;
  SIGNAL v_state : state_for_display;

BEGIN
  blank_n <= '1';
  sync_n  <= '0';

  vga_timing : PROCESS(pixel_clk) IS
    VARIABLE h_counter : INTEGER RANGE 0 TO h_period := 0;
    VARIABLE v_counter : INTEGER RANGE 0 TO v_period := 0;
  BEGIN  
    if (rising_edge(pixel_clk)) then
      -- Reset
      if (reset_n = '0') then
        h_counter := 0;
        column <= 0;
        v_counter := 0;
        row <= 0;
        display_en <= '0';
        v_sync <= not h_polarity;
        h_sync <= not v_polarity;
        h_state <= DISPLAY;
        v_state <= DISPLAY;
      else

        if (h_counter < h_period- 1) then
          h_counter := h_counter + 1;
        else
          h_counter := 0;
          if (v_counter < v_period -1) then
            v_counter := v_counter + 1;
          else
            v_counter := 0;
          end if;
        end if;

        -- -- Display enable signal
        -- -- High when h_counter and v_counter is within screen border
        -- if (h_counter < h_pixels and v_counter < v_pixels) then
        --   display_en <= '1';
        --   column <= h_pixels;
        --   row <= v_pixels;
        -- else
        --   display_en <= '0';
        -- end if;
        --
        -- -- Horizontal sync pulse
        -- -- Active when 
        -- if (h_counter >= h_pixels + h_front_porch and h_counter < h_period - h_back_porch) then
        --   h_sync <= h_polarity;
        -- else
        --   h_sync <= not h_polarity;
        -- end if;
        --
        -- if (v_counter >= v_pixels + v_front_porch and v_counter < v_period - v_back_porch) then
        --   v_sync <= v_polarity;
        -- else
        --   v_sync <= not v_polarity;
        -- end if;
        --



        -- Horizontal states
        case h_state is
          when DISPLAY =>
            h_sync <= not h_polarity;
            column <= h_counter;
            if (h_counter = h_pixels - 1) then -- 639
              h_state <= FRONT_PORCH;
            end if;

          when FRONT_PORCH =>
            if (h_counter = h_pixels + h_front_porch - 1) then
              h_state <= SYNC_PULSE;
            end if;

          when SYNC_PULSE =>
            h_sync <= h_polarity;
            if (h_counter = h_pixels + h_front_porch + h_sync_pulse - 1) then
              h_state <= BACK_PORCH;
            end if;

          when BACK_PORCH =>
            h_sync <= not h_polarity;
            if (h_counter = h_period - 1) then
              h_state <= DISPLAY;
            end if;
        end case;


        -- Vertical states
        case v_state is
          when DISPLAY =>
            v_sync <= not v_polarity;
            row <= v_counter;
            if (v_counter = v_pixels - 1) then
              v_state <= FRONT_PORCH;
            end if;

          when FRONT_PORCH =>
            if (v_counter = v_pixels + v_front_porch - 1) then
              v_state <= SYNC_PULSE;
            end if;

          when SYNC_PULSE =>
            v_sync <= v_polarity;
            if (v_counter = v_pixels + v_front_porch + v_sync_pulse - 1) then
              v_state <= BACK_PORCH;
            end if;

          when BACK_PORCH =>
            v_sync <= not v_polarity;
            if (v_counter = v_period - 1) then
              v_state <= DISPLAY;
            end if;
        end case;

        
        if (h_state = DISPLAY and v_state = DISPLAY) then
          display_en <= '1';
        else
          display_en <= '0';
        end if;

      end if;
    end if;
  END PROCESS;
END RTL;  
