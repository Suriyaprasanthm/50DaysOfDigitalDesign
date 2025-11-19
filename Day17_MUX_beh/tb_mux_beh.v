module tb_mux_beh ;

reg [3:0]tb_in ;
reg[1:0]tb_sel ;
wire  tb_out ;

mux_beh dut (
	.in(tb_in),.sel(tb_sel),.out(tb_out)
);

initial begin 
	
	tb_in = 4'b1010 ;

       	tb_sel= 2'b00 ; #10
	tb_sel= 2'b01 ; #10
	tb_sel= 2'b10 ; #10
	tb_sel= 2'b11 ; #10
	$finish ;
end

initial begin 
	$dumpfile("tb_mux_beh.vcd");
	$dumpvars(0,tb_mux_beh);
end

endmodule

       	
