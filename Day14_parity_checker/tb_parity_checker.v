module tb_parity_checker ;

reg tb_a_in,tb_b_in,tb_p_in ;
wire tb_error_out ;

parity_checker dut (
	.a_in(tb_a_in),.b_in(tb_b_in),.p_in(tb_p_in),.error_out(tb_error_out)
);

initial begin

	tb_a_in = 1'b0 ; tb_b_in = 1'b0 ; tb_p_in = 1'b0 ;
#10	tb_a_in = 1'b0 ; tb_b_in = 1'b0 ; tb_p_in = 1'b1 ;
#10	tb_a_in = 1'b0 ; tb_b_in = 1'b1 ; tb_p_in = 1'b0 ;
#10	tb_a_in = 1'b0 ; tb_b_in = 1'b1 ; tb_p_in = 1'b1 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b0 ; tb_p_in = 1'b0 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b0 ; tb_p_in = 1'b1 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b1 ; tb_p_in = 1'b0 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b1 ; tb_p_in = 1'b1 ;
#10 $finish ;

end

initial begin 

	$dumpfile("tb_parity_checker.vcd");
	$dumpvars(0,tb_parity_checker);
end

endmodule

