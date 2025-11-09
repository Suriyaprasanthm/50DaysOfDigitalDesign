module comparator (
	input a_in , input b_in ,
	output a_e_b , output a_l_b , output a_g_b 
);

assign a_e_b = ~(a_in^b_in);
assign a_l_b = (~a_in) & b_in ;
assign a_g_b = a_in & (~b_in) ;

endmodule
