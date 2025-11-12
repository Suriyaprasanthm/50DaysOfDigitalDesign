module encoder8x3 (
	input i0_in , input i1_in , input i2_in , input i3_in , input i4_in , input i5_in , input i6_in , input i7_in ,
        output o1_out, output o2_out , output o3_out 
);

assign o1_out = i0_in | i3_in | i4_in | i5_in ;
assign o2_out = i1_in | i3_in | i4_in | i6_in ;
assign o3_out = i2_in | i4_in | i5_in | i6_in ;

endmodule
