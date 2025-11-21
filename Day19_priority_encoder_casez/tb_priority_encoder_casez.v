module tb_priority_encoder_casez ;

reg [3:0]tb_in ;
wire [1:0]tb_out ;

priority_encoder_casez dut (
	.in(tb_in),.out(tb_out),.valid(tb_valid)
);

initial begin 

	tb_in = 4'b0000 ; #10
	tb_in = 4'b0001 ; #10
	tb_in = 4'b0010 ; #10
	tb_in = 4'b0011 ; #10
	tb_in = 4'b0100 ; #10
	tb_in = 4'b0101 ; #10
	tb_in = 4'b0110 ; #10
	tb_in = 4'b0111 ; #10
	tb_in = 4'b1000 ; #10
	tb_in = 4'b1001 ; #10
	tb_in = 4'b1010 ; #10
	tb_in = 4'b1011 ; #10
	tb_in = 4'b1100 ; #10
	tb_in = 4'b1101 ; #10
	tb_in = 4'b1110 ; #10
	tb_in = 4'b1111 ; #10
	$finish ;
end

initial begin 

	$dumpfile("tb_priority_encoder_casez.vcd");
	$dumpvars(0,tb_priority_encoder_casez);
end

endmodule
