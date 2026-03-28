
module unsaved (
	clk_clk,
	reset_reset_n,
	sig_hex0_sig,
	sig_hex1_sig,
	sig_hex2_sig,
	sig_hex3_sig,
	sig_hex4_sig,
	sig_hex5_sig,
	sig_hex6_sig,
	sig_hex7_sig,
	sig_lcd_data_sig,
	sig_lcd_en_sig,
	sig_lcd_rs_sig,
	sig_lcd_rw_sig,
	sig_gpio_sig,
	sig_key_sig,
	sig_ledg_sig,
	sig_sw_sig);	

	input		clk_clk;
	input		reset_reset_n;
	output	[6:0]	sig_hex0_sig;
	output	[6:0]	sig_hex1_sig;
	output	[6:0]	sig_hex2_sig;
	output	[6:0]	sig_hex3_sig;
	output	[6:0]	sig_hex4_sig;
	output	[6:0]	sig_hex5_sig;
	output	[6:0]	sig_hex6_sig;
	output	[6:0]	sig_hex7_sig;
	inout	[7:0]	sig_lcd_data_sig;
	output		sig_lcd_en_sig;
	output		sig_lcd_rs_sig;
	output		sig_lcd_rw_sig;
	inout	[35:0]	sig_gpio_sig;
	input	[2:0]	sig_key_sig;
	output	[7:0]	sig_ledg_sig;
	input	[17:0]	sig_sw_sig;
endmodule
