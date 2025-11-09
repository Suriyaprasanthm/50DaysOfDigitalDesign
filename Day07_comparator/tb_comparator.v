module tb_comparator ;

reg tb_a_in , tb_b_in ;
wire tb_a_e_b , tb_a_l_b , tb_a_g_b ;

comparator dut(
	.a_in(tb_a_in),
	.b_in(tb_b_in),
	.a_e_b(tb_a_e_b),
	.a_l_b(tb_a_l_b),
	.a_g_b(tb_a_g_b)
);

initial begin 

	tb_a_in = 1'b0 ; tb_b_in = 1'b0 ;
#10	tb_a_in = 1'b0 ; tb_b_in = 1'b1 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b0 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b1 ;
#10 $finish;

end 

initial begin

	$monitor("time= %0t | tb_a_in = %b tb_b_in = %b | tb_a_e_b = %b tb_a_l_b = %b tb_a_g_b = %b ", $time ,tb_a_in,tb_b_in,tb_a_e_b,tb_a_l_b,tb_a_g_b);
end

initial begin

	$dumpfile("tb_comparator.vcd");
	$dumpvars(0,tb_comparator);
end

endmodule
