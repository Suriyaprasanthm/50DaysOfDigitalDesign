module tb_encoder8x3 ;

reg tb_i0_in ,tb_i1_in ,tb_i2_in ,tb_i3_in ,tb_i4_in ,tb_i5_in ,tb_i6_in ,tb_i7_in ;
wire tb_o1_out , tb_o2_out , tb_o3_out ;

encoder8x3 dut (

	.i0_in(tb_i0_in) ,.i1_in(tb_i1_in) ,.i2_in(tb_i2_in) ,.i3_in(tb_i3_in) ,.i4_in(tb_i4_in) ,.i5_in(tb_i5_in) ,.i6_in(tb_i6_in) ,.i7_in(tb_i7_in),
        .o1_out(tb_o1_out) , .o2_out(tb_o2_out) , .o3_out(tb_o3_out)
);

initial begin 

	tb_i0_in = 1'b1 ;tb_i1_in = 1'b0 ;tb_i2_in = 1'b0 ;tb_i3_in = 1'b0 ;tb_i4_in = 1'b0 ;tb_i5_in = 1'b0 ;tb_i6_in = 1'b0 ;tb_i7_in = 1'b0 ;
#10	tb_i0_in = 1'b0 ;tb_i1_in = 1'b1 ;tb_i2_in = 1'b0 ;tb_i3_in = 1'b0 ;tb_i4_in = 1'b0 ;tb_i5_in = 1'b0 ;tb_i6_in = 1'b0 ;tb_i7_in = 1'b0 ;
#10	tb_i0_in = 1'b0 ;tb_i1_in = 1'b0 ;tb_i2_in = 1'b1 ;tb_i3_in = 1'b0 ;tb_i4_in = 1'b0 ;tb_i5_in = 1'b0 ;tb_i6_in = 1'b0 ;tb_i7_in = 1'b0 ;
#10	tb_i0_in = 1'b0 ;tb_i1_in = 1'b0 ;tb_i2_in = 1'b0 ;tb_i3_in = 1'b1 ;tb_i4_in = 1'b0 ;tb_i5_in = 1'b0 ;tb_i6_in = 1'b0 ;tb_i7_in = 1'b0 ;
#10	tb_i0_in = 1'b0 ;tb_i1_in = 1'b0 ;tb_i2_in = 1'b0 ;tb_i3_in = 1'b0 ;tb_i4_in = 1'b1 ;tb_i5_in = 1'b0 ;tb_i6_in = 1'b0 ;tb_i7_in = 1'b0 ;
#10	tb_i0_in = 1'b0 ;tb_i1_in = 1'b0 ;tb_i2_in = 1'b0 ;tb_i3_in = 1'b0 ;tb_i4_in = 1'b0 ;tb_i5_in = 1'b1 ;tb_i6_in = 1'b0 ;tb_i7_in = 1'b0 ;
#10	tb_i0_in = 1'b0 ;tb_i1_in = 1'b0 ;tb_i2_in = 1'b0 ;tb_i3_in = 1'b0 ;tb_i4_in = 1'b0 ;tb_i5_in = 1'b0 ;tb_i6_in = 1'b1 ;tb_i7_in = 1'b0 ;
#10	tb_i0_in = 1'b0 ;tb_i1_in = 1'b0 ;tb_i2_in = 1'b0 ;tb_i3_in = 1'b0 ;tb_i4_in = 1'b0 ;tb_i5_in = 1'b0 ;tb_i6_in = 1'b0 ;tb_i7_in = 1'b1 ;
#10 $finish ;

end

initial begin 

	$monitor("time=%0t tb_i0_in = %b tb_i1_in = %b tb_i2_in = %b tb_i3_in = %b ;tb_i4_in = %b tb_i5_in = %b tb_i6_in = %b tb_i7_in = %b | tb_o1_out = %b tb_o2_out = %b tb_o3_out = %b ",$time,tb_i0_in,tb_i1_in,tb_i2_in,tb_i3_in,tb_i4_in,tb_i5_in,tb_i6_in,tb_i7_in,tb_o1_out,tb_o2_out,tb_o3_out) ;

end

initial begin 

	$dumpfile("tb_encoder8x3.vcd");
	$dumpvars(0,tb_encoder8x3);
end 

endmodule










