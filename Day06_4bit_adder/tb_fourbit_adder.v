module tb_fourbit_adder ;

reg [3:0]tb_a_in ;
reg [3:0]tb_b_in ;
reg tb_c_in ;
wire [3:0]tb_s_out ;
wire tb_c_out ;


fourbit_adder dut (
	.a_in(tb_a_in),
	.b_in(tb_b_in),
	.c_in(tb_c_in),
	.s_out(tb_s_out),
	.c_out(tb_c_out)
);

initial begin

	tb_a_in = 4'b0001 ; tb_b_in = 4'b1010 ; tb_c_in = 1'b0 ;
#10     tb_a_in = 4'b0011 ; tb_b_in = 4'b1011 ; tb_c_in = 1'b1 ;
#10	tb_a_in = 4'b0111 ; tb_b_in = 4'b1010 ; tb_c_in = 1'b0 ;
#10	tb_a_in = 4'b1111 ; tb_b_in = 4'b1111 ; tb_c_in = 1'b0 ;
#10 $finish ;

end 

initial begin
	$dumpfile("tb_fourbit_adder.vcd");
	$dumpvars(0,tb_fourbit_adder);

end

initial begin
	$monitor("time =%0t tb_a_in = %b tb_b_in = %b tb_c_in = %b | s_out = %b c_out = %b",$time ,tb_a_in,tb_b_in,tb_c_in,tb_s_out,tb_c_out);
end 

endmodule


