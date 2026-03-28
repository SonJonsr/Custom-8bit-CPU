
module unsaved (
	clk_clk,
	reg_key_sig,
	reg_ledg_sig,
	reg_sw_sig,
	reset_reset_n);	

	input		clk_clk;
	input	[3:0]	reg_key_sig;
	output	[7:0]	reg_ledg_sig;
	input	[17:0]	reg_sw_sig;
	input		reset_reset_n;
endmodule
