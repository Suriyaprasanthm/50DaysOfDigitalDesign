module fbit_adder_sub (
	input [3:0]a_in ,
	input [3:0]b_in ,
	output reg [3:0]out,
	output reg carry_out,
	output reg borrow_out,
	input mode 
);

always @(*) begin

	carry_out = 0 ; borrow_out = 0;

	case(mode)
		1 : begin
			{carry_out,out} = a_in + b_in ;
		end
		
		0 : begin
			out = a_in - b_in ;
			borrow_out = (a_in<b_in) ? 1 : 0 ;
		end
	endcase
end

endmodule
			
