module tb_demux;

reg tb_a_in,tb_s0_in,tb_s1_in ;
wire tb_o1_out,tb_o2_out,tb_o3_out,tb_o4_out;
inout tb_n1_out,tb_n2_out;
demux dut (
	.a_in(tb_a_in),
	.s0_in(tb_s0_in),
	.s1_in(tb_s1_in),
        .o1_out(tb_o1_out),
	.o2_out(tb_o2_out),
	.o3_out(tb_o3_out),
	.o4_out(tb_o4_out),
	.n1_out(tb_n1_out),
	.n2_out(tb_n2_out)
);

initial begin

	tb_a_in = 1'b1 ;

	tb_s0_in = 1'b0 ; tb_s1_in = 1'b0 ;
#10	tb_s0_in = 1'b0 ; tb_s1_in = 1'b1 ;
#10	tb_s0_in = 1'b1 ; tb_s1_in = 1'b0 ;
#10	tb_s0_in = 1'b1 ; tb_s1_in = 1'b1 ;
#10     $finish ;

end

initial begin 

	$dumpfile("tb_demux.vcd");
	$dumpvars(0,tb_demux);

end

endmodule
