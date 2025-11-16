module parity_checker (
	input a_in ,
	input b_in ,
	input p_in ,
	output error_out
);

assign error_out = a_in ^ b_in ^ p_in ;

endmodule


