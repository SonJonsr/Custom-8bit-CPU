	component unsaved is
		port (
			clk_clk       : in  std_logic                     := 'X';             -- clk
			reg_key_sig   : in  std_logic_vector(3 downto 0)  := (others => 'X'); -- key_sig
			reg_ledg_sig  : out std_logic_vector(7 downto 0);                     -- ledg_sig
			reg_sw_sig    : in  std_logic_vector(17 downto 0) := (others => 'X'); -- sw_sig
			reset_reset_n : in  std_logic                     := 'X'              -- reset_n
		);
	end component unsaved;

	u0 : component unsaved
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			reg_key_sig   => CONNECTED_TO_reg_key_sig,   --   reg.key_sig
			reg_ledg_sig  => CONNECTED_TO_reg_ledg_sig,  --      .ledg_sig
			reg_sw_sig    => CONNECTED_TO_reg_sw_sig,    --      .sw_sig
			reset_reset_n => CONNECTED_TO_reset_reset_n  -- reset.reset_n
		);

