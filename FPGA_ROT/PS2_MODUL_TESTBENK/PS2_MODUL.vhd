LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY PS2_MODUL IS
  PORT ( 
    -- Inputs from clk & rst_n
    clk   : IN STD_LOGIC; 
    rst_n : IN STD_LOGIC;

    -- Inputs from PS/2
    ps2_clk : IN STD_LOGIC;
    ps2_dat : IN STD_LOGIC;

    -- Inputs from memory
    en            : IN STD_LOGIC;
    rw            : IN STD_LOGIC;
    array_select  : IN STD_LOGIC;

    -- Outputs
    rdy   : OUT STD_LOGIC := '0';
    ascii : OUT STD_LOGIC_VECTOR(7 downto 0) := x"00"
  );
END PS2_MODUL;

ARCHITECTURE RTL OF PS2_MODUL IS

  -- COMPONENT DECLARATION --
  COMPONENT antibounce IS
	PORT(
		clk, data_in  : IN	STD_LOGIC;
		data_out      : OUT	STD_LOGIC
	);
  END COMPONENT;
  COMPONENT PS2_RAW_DATA IS
    PORT ( 
      clk, rst_n,
      ps2_clk, ps2_dat  : IN  STD_LOGIC;
      err, new_dat      : OUT STD_LOGIC;
      dat               : OUT STD_LOGIC_VECTOR(7 downto 0)
    );
  END COMPONENT;
  COMPONENT PS2_MERGE IS
    PORT ( 
      clk, rst_n,
      err, new_dat  : IN  STD_LOGIC;
      dat           : IN  STD_LOGIC_VECTOR(7 downto 0);
      new_code, 
      layer, break  : OUT STD_LOGIC;
      code          : OUT STD_LOGIC_VECTOR(7 downto 0)
    );
  END COMPONENT;
  COMPONENT PS2_TO_ASCII IS
    PORT ( 
      clk,
      rst_n, new_code,
      layer, break      : IN  STD_LOGIC;
      code              : IN  STD_LOGIC_VECTOR(7 downto 0);
      new_ascii, remove : OUT STD_LOGIC;
      ascii             : OUT STD_LOGIC_VECTOR(7 downto 0)
    );
  END COMPONENT;
  COMPONENT PS2_ASCII_TABLE IS
    PORT ( 
      clk, rst_n, en,
      rw, array_select,
      new_ascii, remove : IN  STD_LOGIC;
      ascii_in          : IN  STD_LOGIC_VECTOR(7 downto 0);
      rdy               : OUT STD_LOGIC;
      ascii_out         : OUT STD_LOGIC_VECTOR(7 downto 0)
    );
  END COMPONENT;
  -- END OF COMPONENT DECLARATION --

  -- SIGNALS FOR COMPONENTS --
  SIGNAL ps2_clk_sync, ps2_dat_sync : STD_LOGIC;
  SIGNAL err_sig, new_dat_sig : STD_LOGIC;
  SIGNAL dat_sig : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL new_code_sig, layer_sig, break_sig : STD_LOGIC;
  SIGNAL code_sig : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL new_ascii_sig, remove_sig : STD_LOGIC;
  SIGNAL ascii_sig : STD_LOGIC_VECTOR(7 downto 0);

BEGIN


  ps2_clk_antibounce: antibounce
    port map(
      clk => clk,
      data_in => ps2_clk,
      data_out => ps2_clk_sync
    );
  ps2_dat_antibounce : antibounce
    port map(
      clk => clk,
      data_in => ps2_dat,
      data_out => ps2_dat_sync
    );

    PS2_RAW_DATA_inst: PS2_RAW_DATA
     port map(
        clk => clk,
        rst_n => rst_n,
        ps2_clk => ps2_clk_sync,
        ps2_dat => ps2_dat_sync,
        err => err_sig,
        new_dat => new_dat_sig,
        dat => dat_sig
    );

    PS2_MERGE_inst: PS2_MERGE
     port map(
        clk => clk,
        rst_n => rst_n,
        err => err_sig,
        new_dat => new_dat_sig,
        dat => dat_sig,
        new_code => new_code_sig,
        layer => layer_sig,
        break => break_sig,
        code => code_sig
    );

    PS2_TO_ASCII_inst: PS2_TO_ASCII
     port map(
        clk => clk,
        rst_n => rst_n,
        new_code => new_code_sig,
        layer => layer_sig,
        break => break_sig,
        code => code_sig,
        new_ascii => new_ascii_sig,
        remove => remove_sig,
        ascii => ascii_sig
    );

    PS2_ASCII_TABLE_inst: PS2_ASCII_TABLE
     port map(
        clk => clk,
        rst_n => rst_n,
        en => en,
        rw => rw,
        array_select => array_select,
        new_ascii => new_ascii_sig,
        remove => remove_sig,
        ascii_in => ascii_sig,
        rdy => rdy,
        ascii_out => ascii
    );

END RTL;
