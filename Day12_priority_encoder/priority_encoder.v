module priority_encoder (
	input i1_in ,
	input i2_in ,
	input i3_in ,
	input i4_in ,
	output o1_out ,
	output o2_out 
);

assign o1_out = i4_in | i3_in ;
assign o2_out = i4_in | (~i3_in & (i2_in) ) ;

endmodule
