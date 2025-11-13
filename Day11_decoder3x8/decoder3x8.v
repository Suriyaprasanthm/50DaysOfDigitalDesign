module decoder3x8 (
	input i1_in ,
	input i2_in ,
	input i3_in ,
	output o1_out ,
	output o2_out ,
	output o3_out ,
	output o4_out ,
	output o5_out ,
	output o6_out ,
	output o7_out ,
	output o8_out 
);

assign o1_out = (~i1_in) & (~i2_in) & (~i3_in) ;
assign o2_out = (~i1_in) & (~i2_in) & (i3_in) ;
assign o3_out = (~i1_in) & (i2_in) & (~i3_in) ;
assign o4_out = (~i1_in) & (i2_in) & (i3_in) ;
assign o5_out = (i1_in) & (~i2_in) & (~i3_in) ;
assign o6_out = (i1_in) & (~i2_in) & (i3_in) ;
assign o7_out = (i1_in) & (i2_in) & (~i3_in) ;
assign o8_out = (i1_in) & (i2_in) & (i3_in) ;

endmodule






