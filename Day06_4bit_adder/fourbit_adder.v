module fourbit_adder (
	input [3:0] a_in ,
       	input [3:0] b_in ,
	input c_in ,
	output [3:0]s_out ,
       	output c_out 
);
inout c1,c2,c3 ;

assign s_out[0]= a_in[0]^b_in[0]^c_in ;
assign c1= (a_in[0]&b_in[0]) | (b_in[0]&c_in) | (c_in&a_in[0]) ;

assign s_out[1]= a_in[1]^b_in[1]^c1 ;
assign c2= (a_in[1]&b_in[1]) | (b_in[1]&c1) | (c1&a_in[1]) ;

assign s_out[2]= a_in[2]^b_in[2]^c2 ;
assign c3= (a_in[2]&b_in[2]) | (b_in[2]&c2) | (c2&a_in[2]) ;

assign s_out[3]= a_in[3]^b_in[3]^c3 ;
assign c_out= (a_in[3]&b_in[3]) | (b_in[3]&c3) | (c3&a_in[3]) ;

endmodule
