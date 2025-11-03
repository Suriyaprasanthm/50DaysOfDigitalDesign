module tb_full_sub;

reg tb_a_in,tb_b_in,tb_c_in;
wire tb_d_out,tb_b_out;
inout tb_a1_out,tb_a2_out,tb_a3_out,tb_n_out;

full_sub dut (.d_out(tb_d_out),.b_out(tb_b_out),.a1_out(tb_a1_out),.a2_out(tb_a2_out),.a3_out(tb_a3_out),.n_out(tb_n_out),.a_in(tb_a_in),.b_in(tb_b_in),.c_in(tb_c_in));

initial begin

	tb_a_in = 1'b0 ; tb_b_in = 1'b0 ; tb_c_in = 1'b0 ;
#10	tb_a_in = 1'b0 ; tb_b_in = 1'b0 ; tb_c_in = 1'b1 ;
#10	tb_a_in = 1'b0 ; tb_b_in = 1'b1 ; tb_c_in = 1'b0 ;
#10	tb_a_in = 1'b0 ; tb_b_in = 1'b1 ; tb_c_in = 1'b1 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b0 ; tb_c_in = 1'b0 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b0 ; tb_c_in = 1'b1 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b1 ; tb_c_in = 1'b0 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b1 ; tb_c_in = 1'b1 ;
#10     $finish;

end

initial begin 

	$dumpfile("tb_full_sub.vcd");
	$dumpvars(0,tb_full_sub);

end

endmodule 
