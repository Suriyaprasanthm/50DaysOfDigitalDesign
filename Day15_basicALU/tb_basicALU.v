module tb_basicALU ;

reg[3:0] tb_a_in ;
reg[3:0] tb_b_in ;
reg [2:0] tb_sel ;
wire [4:0] tb_y_out ;
integer i,j,k ;

basicALU dut (
	.a_in(tb_a_in),.b_in(tb_b_in),.sel(tb_sel),.y_out(tb_y_out)
);

initial begin 
	
	for(i = 0; i < 16 ;i= i + 1)begin
		for(j =0 ; j < 16 ;j= j + 1)begin
			for(k = 0 ; k < 8 ;k= k + 1)begin
				tb_a_in = i;
			        tb_b_in = j;
				tb_sel = k;
				#10;
			end
		end
	end
	$finish ;
end

initial begin 

	$dumpfile("tb_basicALU.vcd");
	$dumpvars(0,tb_basicALU);
end

endmodule
