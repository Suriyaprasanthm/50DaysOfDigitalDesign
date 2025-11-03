module tb_half_sub ;

reg tb_a_in,tb_b_in;
wire tb_d_out,tb_b_out;
inout tb_n_out;

half_sub dut (.n_out(tb_n_out),.d_out(tb_d_out),.b_out(tb_b_out),.a_in(tb_a_in),.b_in(tb_b_in));

initial begin 

	tb_a_in = 1'b0 ; tb_b_in = 1'b0 ;
#10     tb_a_in = 1'b0 ; tb_b_in = 1'b1 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b0 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b1 ;
#10	$finish ;
end

initial begin

	$dumpfile("tb_half_sub.vcd");
	$dumpvars(0,tb_half_sub);
end

endmodule
