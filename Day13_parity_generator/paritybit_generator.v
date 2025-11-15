module paritybit_generator (
	input a_in ,
	input b_in ,
	input c_in ,
	output paritybit 
);

assign paritybit = a_in ^ b_in ^ c_in ;

endmodule
