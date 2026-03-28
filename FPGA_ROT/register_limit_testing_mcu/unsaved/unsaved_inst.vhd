	component unsaved is
		port (
			clk_clk          : in    std_logic                     := 'X';             -- clk
			reset_reset_n    : in    std_logic                     := 'X';             -- reset_n
			sig_hex0_sig     : out   std_logic_vector(6 downto 0);                     -- hex0_sig
			sig_hex1_sig     : out   std_logic_vector(6 downto 0);                     -- hex1_sig
			sig_hex2_sig     : out   std_logic_vector(6 downto 0);                     -- hex2_sig
			sig_hex3_sig     : out   std_logic_vector(6 downto 0);                     -- hex3_sig
			sig_hex4_sig     : out   std_logic_vector(6 downto 0);                     -- hex4_sig
			sig_hex5_sig     : out   std_logic_vector(6 downto 0);                     -- hex5_sig
			sig_hex6_sig     : out   std_logic_vector(6 downto 0);                     -- hex6_sig
			sig_hex7_sig     : out   std_logic_vector(6 downto 0);                     -- hex7_sig
			sig_lcd_data_sig : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- lcd_data_sig
			sig_lcd_en_sig   : out   std_logic;                                        -- lcd_en_sig
			sig_lcd_rs_sig   : out   std_logic;                                        -- lcd_rs_sig
			sig_lcd_rw_sig   : out   std_logic;                                        -- lcd_rw_sig
			sig_gpio_sig     : inout std_logic_vector(35 downto 0) := (others => 'X'); -- gpio_sig
			sig_key_sig      : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- key_sig
			sig_ledg_sig     : out   std_logic_vector(7 downto 0);                     -- ledg_sig
			sig_sw_sig       : in    std_logic_vector(17 downto 0) := (others => 'X')  -- sw_sig
		);
	end component unsaved;

	u0 : component unsaved
		port map (
			clk_clk          => CONNECTED_TO_clk_clk,          --   clk.clk
			reset_reset_n    => CONNECTED_TO_reset_reset_n,    -- reset.reset_n
			sig_hex0_sig     => CONNECTED_TO_sig_hex0_sig,     --   sig.hex0_sig
			sig_hex1_sig     => CONNECTED_TO_sig_hex1_sig,     --      .hex1_sig
			sig_hex2_sig     => CONNECTED_TO_sig_hex2_sig,     --      .hex2_sig
			sig_hex3_sig     => CONNECTED_TO_sig_hex3_sig,     --      .hex3_sig
			sig_hex4_sig     => CONNECTED_TO_sig_hex4_sig,     --      .hex4_sig
			sig_hex5_sig     => CONNECTED_TO_sig_hex5_sig,     --      .hex5_sig
			sig_hex6_sig     => CONNECTED_TO_sig_hex6_sig,     --      .hex6_sig
			sig_hex7_sig     => CONNECTED_TO_sig_hex7_sig,     --      .hex7_sig
			sig_lcd_data_sig => CONNECTED_TO_sig_lcd_data_sig, --      .lcd_data_sig
			sig_lcd_en_sig   => CONNECTED_TO_sig_lcd_en_sig,   --      .lcd_en_sig
			sig_lcd_rs_sig   => CONNECTED_TO_sig_lcd_rs_sig,   --      .lcd_rs_sig
			sig_lcd_rw_sig   => CONNECTED_TO_sig_lcd_rw_sig,   --      .lcd_rw_sig
			sig_gpio_sig     => CONNECTED_TO_sig_gpio_sig,     --      .gpio_sig
			sig_key_sig      => CONNECTED_TO_sig_key_sig,      --      .key_sig
			sig_ledg_sig     => CONNECTED_TO_sig_ledg_sig,     --      .ledg_sig
			sig_sw_sig       => CONNECTED_TO_sig_sw_sig        --      .sw_sig
		);

