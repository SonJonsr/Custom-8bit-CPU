LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY PS2_TO_ASCII IS
  PORT ( 
    -- Inputs from clk & rst_n
    clk   : IN STD_LOGIC; 
    rst_n : IN STD_LOGIC;

    -- Inputs from PS2_MERGE
    new_code  : IN STD_LOGIC;
    layer     : IN STD_LOGIC;
    break     : IN STD_LOGIC;
    code      : IN STD_LOGIC_VECTOR(7 downto 0);

    -- Input from PS2_ASCII_TABLE
    rdy       : IN STD_LOGIC;

    -- Outputs
    new_ascii : OUT STD_LOGIC := '0';
    remove    : OUT STD_LOGIC := '0';
    ascii     : OUT STD_LOGIC_VECTOR(7 downto 0) := x"00"
  );

END PS2_TO_ASCII;

ARCHITECTURE RTL OF PS2_TO_ASCII IS 

  SIGNAL new_code_rising_edge : STD_LOGIC := '0';
  SIGNAL new_code_rising_edge_dff : STD_LOGIC := '0';

  SIGNAL ascii_sig : STD_LOGIC_VECTOR(7 downto 0) := x"00";

  SIGNAL shft   : STD_LOGIC_VECTOR(7 downto 0) := x"00";
  SIGNAL shft_r : STD_LOGIC := '0';
  SIGNAL shft_l : STD_LOGIC := '0';

  SIGNAL ctrl   : STD_LOGIC := '0';
  SIGNAL ctrl_r : STD_LOGIC := '0';
  SIGNAL ctrl_l : STD_LOGIC := '0';

  SIGNAL alt_r  : STD_LOGIC := '0';

  SIGNAL caps   : STD_LOGIC := '0';

  SIGNAL capitalized : STD_LOGIC_VECTOR(7 downto 0) := x"00";

  COMPONENT rising_edge_detector IS
    PORT(
      clk     : IN STD_LOGIC;
      sig     : IN STD_LOGIC;
      rising_edge_detected : OUT STD_LOGIC
    );
  END COMPONENT;

BEGIN
  shft <= x"10" when (shft_l = '1' or shft_r = '1') else x"00";
  ctrl <= '1' when (ctrl_r = '1' or ctrl_r = '1') else '0';

  capitalized <= x"00" when (shft = x"10" or caps = '1') else x"20";

  process(clk)
  begin
    if (rising_edge(clk)) then
      if (rst_n = '0') then
        shft_r <= '0';
        shft_l <= '0';
        ctrl_r <= '0';
        ctrl_l <= '0';
        caps   <= '0';

      else
        if (new_code_rising_edge = '1') then
          new_code_rising_edge_dff <= new_code_rising_edge;

          if (layer = '0') then
            case code is
              -- CTRL & SHFT & CAPS --
              when x"12" => shft_l <= not break;
              when x"14" => ctrl_l <= not break;
              when x"58" => 
                if (break = '0') then
                  caps <= not caps;
                end if;
              when x"59" => shft_r <= not break;

              -- SPACE & BACKSPACE & TAG & ENTER & ESCAPE --
              when x"29" => ascii_sig <= x"20"; -- Mellomrom
              when x"66" => ascii_sig <= x"08"; -- Tilbaketast
              when x"0D" => ascii_sig <= x"09"; -- Tab 
              when x"5A" => ascii_sig <= x"0D"; -- Enter
              when x"76" => ascii_sig <= x"1B"; -- Escape

              -- ALPHABET --
              when x"1C" => ascii_sig <= x"41" or capitalized; -- A
              when x"32" => ascii_sig <= x"42" or capitalized; -- B
              when x"21" => ascii_sig <= x"43" or capitalized; -- C
              when x"23" => ascii_sig <= x"44" or capitalized; -- D
              when x"24" => ascii_sig <= x"45" or capitalized; -- E
              when x"2B" => ascii_sig <= x"46" or capitalized; -- F
              when x"34" => ascii_sig <= x"47" or capitalized; -- G
              when x"33" => ascii_sig <= x"48" or capitalized; -- H
              when x"43" => ascii_sig <= x"49" or capitalized; -- I
              when x"3B" => ascii_sig <= x"4A" or capitalized; -- J
              when x"42" => ascii_sig <= x"4B" or capitalized; -- K
              when x"4B" => ascii_sig <= x"4C" or capitalized; -- L
              when x"3A" => ascii_sig <= x"4D" or capitalized; -- M
              when x"31" => ascii_sig <= x"4E" or capitalized; -- N
              when x"44" => ascii_sig <= x"4F" or capitalized; -- O
              when x"4D" => ascii_sig <= x"50" or capitalized; -- P
              when x"15" => ascii_sig <= x"51" or capitalized; -- Q
              when x"2D" => ascii_sig <= x"52" or capitalized; -- R
              when x"1B" => ascii_sig <= x"53" or capitalized; -- S
              when x"2C" => ascii_sig <= x"54" or capitalized; -- T
              when x"3C" => ascii_sig <= x"55" or capitalized; -- U
              when x"2A" => ascii_sig <= x"56" or capitalized; -- V
              when x"1D" => ascii_sig <= x"57" or capitalized; -- W
              when x"22" => ascii_sig <= x"58" or capitalized; -- X
              when x"35" => ascii_sig <= x"59" or capitalized; -- Y
              when x"1A" => ascii_sig <= x"5A" or capitalized; -- Z

              -- NUMROW --
              when x"45" => -- 0, =, }
                if (alt_r = '1') then
                  ascii_sig <= x"7D"; -- }
                elsif (shft = x"00") then
                  ascii_sig <= x"30"; -- 0
                else
                  ascii_sig <= x"3D"; -- =
                end if;

              when x"16" => ascii_sig <= x"31" xor shft; -- 1, !
              when x"1E" =>  -- 2, ", @
                if (alt_r = '0') then
                  ascii_sig <= x"32" xor shft; -- 2, "
                else
                  ascii_sig <= x"40"; -- @
                end if;

              when x"26" => ascii_sig <= x"33" xor shft; -- 3, #
              when x"25" => ascii_sig <= x"34" xor shft; -- 4, $
              when x"2E" => ascii_sig <= x"35" xor shft; -- 5, %
              when x"36" => ascii_sig <= x"36" xor shft; -- 6, &

              when x"3D" => -- 7, /, {
                if (alt_r = '1') then
                  ascii_sig <= x"7B"; -- {
                elsif (shft = x"00") then
                  ascii_sig <= x"37"; -- 7
                else
                  ascii_sig <= x"2F"; -- /
                end if;

              when x"3E" => -- 8, (, [
                if (alt_r = '0') then
                  ascii_sig <= x"38" xor shft; -- 8, (
                else
                  ascii_sig <= x"5B"; -- [
                end if;

              when x"46" => -- 9, ), ]
                if (alt_r = '0') then
                  ascii_sig <= x"39" xor shft; -- 9, )
                else
                  ascii_sig <= x"5D"; -- ]
                end if;

              -- PUNCTUATION --
              when x"41" => ascii_sig <= x"2C" xor shft; -- ,, ;
              when x"49" => ascii_sig <= x"2E" xor shft; -- ., :

              -- MATH --
              when x"4A" => -- -, _
                if (shft = x"00") then
                  ascii_sig <= x"2E"; -- -
                else
                  ascii_sig <= x"5F"; -- _
                end if;

              when x"55" => -- +, ?
                if (shft = x"00") then
                  ascii_sig <= x"2B"; -- -
                else
                  ascii_sig <= x"3F"; -- _
                end if;

              when others => null;
            end case;
          else
            case code is
              when x"11" => alt_r <= not break;  -- ALT
              when x"14" => ctrl_r <= not break; -- CTRL
              -- ARROWS --
              when x"6B" => ascii_sig <= x"FF"; -- Left
              when x"74" => ascii_sig <= x"01"; -- Right
              when x"75" => ascii_sig <= x"F0"; -- Up
              when x"72" => ascii_sig <= x"10"; -- Down
              when others => null;
            end case;
          end if;
        elsif (new_code_rising_edge_dff = '1' and rdy = '1') then
          new_code_rising_edge_dff <= '0';
          if (ascii_sig /= x"00") then
            ascii <= ascii_sig;
            remove <= break;
            new_ascii <= '1';
            ascii_sig <= x"00";
          end if;
        else
          new_ascii <= '0';
        end if;
      end if;
    end if;
  end process;

  new_code_rising_edge_detector : rising_edge_detector
   port map(
      clk => clk,
      sig => new_code,
      rising_edge_detected => new_code_rising_edge
  );

END RTL;
