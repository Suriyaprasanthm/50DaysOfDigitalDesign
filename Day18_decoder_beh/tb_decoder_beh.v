module tb_decoder_beh ;

reg [1:0]tb_in ;
wire [3:0]tb_out ;

decoder_beh  dut (
	.in(tb_in),.out(tb_out)
);

initial begin 

	tb_in = 2'b00 ; #10
	tb_in = 2'b01 ; #10
	tb_in = 2'b10 ; #10
	tb_in = 2'b11 ; #10
	$finish ;
end

initial begin 

	$dumpfile("tb_decoder_beh.vcd");
	$dumpvars(0,tb_decoder_beh);
end

endmodule
