module parity_generator (
	input [7:0]data_in ,
	output reg even_parity ,
	output reg odd_parity 
);
integer i ;
always @(*) begin
	even_parity = 0 ;
	for(i=0 ; i<8 ; i = i+1 ) begin

		even_parity = even_parity ^ data_in[i] ;
	end
	odd_parity = ~even_parity ;
end

endmodule



