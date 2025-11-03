module tb_all_gates ;

reg tb_a_in,tb_b_in;
wire tb_and_out,tb_or_out,tb_not_out_a,tb_not_out_b,tb_nand_out,tb_nor_out,tb_xor_out,tb_xnor_out,tb_buf_out_a,tb_buf_out_b;

all_gates dut1 (.and_out(tb_and_out),.a_in(tb_a_in),.b_in(tb_b_in));
all_gates dut2 (.or_out(tb_or_out),.a_in(tb_a_in),.b_in(tb_b_in));
all_gates dut3 (.not_out_a(tb_not_out_a),.a_in(tb_a_in));
all_gates dut4 (.not_out_b(tb_not_out_b),.b_in(tb_b_in));
all_gates dut5 (.nand_out(tb_nand_out),.a_in(tb_a_in),.b_in(tb_b_in));
all_gates dut6 (.nor_out(tb_nor_out),.a_in(tb_a_in),.b_in(tb_b_in));
all_gates dut7 (.xnor_out(tb_xnor_out),.a_in(tb_a_in),.b_in(tb_b_in));
all_gates dut8 (.xor_out(tb_xor_out),.a_in(tb_a_in),.b_in(tb_b_in));
all_gates dut9 (.buf_out_a(tb_buf_out_a),.a_in(tb_a_in));
all_gates dut10 (.buf_out_b(tb_buf_out_b),.b_in(tb_b_in));

initial begin

	tb_a_in = 1'b0 ; tb_b_in = 1'b0 ;
#10	tb_a_in = 1'b0 ; tb_b_in = 1'b1 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b0 ;
#10     tb_a_in = 1'b1 ; tb_b_in = 1'b1 ;
#10 $finish;

end

initial begin

	$dumpfile("tb_all_gates.vcd");
	$dumpvars(0,tb_all_gates);

end

endmodule
