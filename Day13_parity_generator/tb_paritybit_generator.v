module tb_paritybit_generator ;

reg tb_a_in,tb_b_in,tb_c_in ;
wire tb_paritybit ;

paritybit_generator dut (
	.a_in(tb_a_in),.b_in(tb_b_in),.c_in(tb_c_in),.paritybit(tb_paritybit)
);

initial begin

	tb_a_in = 1'b0 ; tb_b_in = 1'b0 ; tb_c_in = 1'b0 ;
#10	tb_a_in = 1'b0 ; tb_b_in = 1'b0 ; tb_c_in = 1'b1 ;
#10	tb_a_in = 1'b0 ; tb_b_in = 1'b1 ; tb_c_in = 1'b0 ;
#10	tb_a_in = 1'b0 ; tb_b_in = 1'b1 ; tb_c_in = 1'b1 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b0 ; tb_c_in = 1'b0 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b0 ; tb_c_in = 1'b1 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b1 ; tb_c_in = 1'b0 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b1 ; tb_c_in = 1'b1 ;
#10 $finish ;

end

initial begin 

	$dumpfile("tb_paritybit_generator.vcd");
	$dumpvars(0,tb_paritybit_generator);
end

endmodule







