module tb_priority_encoder ;

reg tb_i1_in,tb_i2_in,tb_i3_in,tb_i4_in ;
wire tb_o1_out,tb_o2_out ;

priority_encoder dut (
	.i1_in(tb_i1_in),.i2_in(tb_i2_in),.i3_in(tb_i3_in),.i4_in(tb_i4_in), 
	.o1_out(tb_o1_out),.o2_out(tb_o2_out)
);

initial begin

	tb_i1_in = 1'b1 ; tb_i2_in = 1'b0 ; tb_i3_in = 1'b0 ; tb_i4_in = 1'b0 ;
#10	tb_i1_in = 1'b1 ; tb_i2_in = 1'b1 ; tb_i3_in = 1'b0 ; tb_i4_in = 1'b0 ;
#10	tb_i1_in = 1'b1 ; tb_i2_in = 1'b1 ; tb_i3_in = 1'b1 ; tb_i4_in = 1'b0 ;
#10	tb_i1_in = 1'b1 ; tb_i2_in = 1'b1 ; tb_i3_in = 1'b1 ; tb_i4_in = 1'b1 ;
#10	tb_i1_in = 1'b0 ; tb_i2_in = 1'b0 ; tb_i3_in = 1'b0 ; tb_i4_in = 1'b0 ;
#10 $finish ;

end

initial begin 

	$dumpfile("tb_priority_encoder.vcd");
	$dumpvars(0,tb_priority_encoder);
end

endmodule




