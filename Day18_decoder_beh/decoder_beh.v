module decoder_beh (
	input [1:0]in ,
	output reg [3:0]out
);

always @(*) begin

	if(in == 2'b00)begin
		out = 4'b1111 ;
	end

	else if (in == 2'b01)begin
		out = 4'b0001 ;
	end

	else if (in == 2'b10)begin
		out = 4'b0010 ;
	end

	else begin
		out = 4'b0100 ;

	end
end

endmodule

