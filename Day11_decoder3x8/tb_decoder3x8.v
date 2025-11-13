module tb_decoder3x8 ;

reg tb_i1_in ,tb_i2_in ,tb_i3_in ;
output tb_o1_out,tb_o2_out,tb_o3_out,tb_o4_out,tb_o5_out,tb_o6_out,tb_o7_out ,tb_o8_out ;

decoder3x8 dut (
	.i1_in(tb_i1_in),.i2_in(tb_i2_in),.i3_in(tb_i3_in), 
	.o1_out(tb_o1_out),.o2_out(tb_o2_out),.o3_out(tb_o3_out),.o4_out(tb_o4_out),.o5_out(tb_o5_out),.o6_out(tb_o6_out),.o7_out(tb_o7_out),.o8_out(tb_o8_out)
);

initial begin 

	tb_i1_in = 1'b0 ; tb_i2_in = 1'b0 ; tb_i3_in = 1'b0 ;
#10	tb_i1_in = 1'b0 ; tb_i2_in = 1'b0 ; tb_i3_in = 1'b1 ;
#10	tb_i1_in = 1'b0 ; tb_i2_in = 1'b1 ; tb_i3_in = 1'b0 ;
#10	tb_i1_in = 1'b0 ; tb_i2_in = 1'b1 ; tb_i3_in = 1'b1 ;
#10	tb_i1_in = 1'b1 ; tb_i2_in = 1'b0 ; tb_i3_in = 1'b0 ;
#10	tb_i1_in = 1'b1 ; tb_i2_in = 1'b0 ; tb_i3_in = 1'b1 ;
#10	tb_i1_in = 1'b1 ; tb_i2_in = 1'b1 ; tb_i3_in = 1'b0 ;
#10	tb_i1_in = 1'b1 ; tb_i2_in = 1'b1 ; tb_i3_in = 1'b1 ;
#10 $finish ;

end

initial begin 

	$dumpfile("tb_decoder3x8.vcd");
	$dumpvars(0,tb_decoder3x8);
end

endmodule





