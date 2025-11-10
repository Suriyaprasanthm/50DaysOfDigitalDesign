module tb_mux;

reg tb_i0_in,tb_i1_in,tb_i2_in,tb_i3_in,tb_b_in,tb_c_in;
inout tb_nb_out,tb_nc_out,tb_a1_out,tb_a2_out,tb_a3_out,tb_a4_out;
wire tb_y_out;

mux dut (
	.i0_in(tb_i0_in),
	.i1_in(tb_i1_in),
	.i2_in(tb_i2_in),
	.i3_in(tb_i3_in),
	.b_in(tb_b_in),
	.c_in(tb_c_in),
        .nb_out(tb_nb_out),
	.nc_out(tb_nc_out),
	.a1_out(tb_a1_out),
	.a2_out(tb_a2_out),
	.a3_out(tb_a3_out),
	.a4_out(tb_a4_out),
        .y_out(tb_y_out)
);

initial begin

	tb_i0_in = 1'b1 ; tb_i1_in = 1'b0 ; tb_i2_in = 1'b1 ; tb_i3_in = 1'b0 ; 	
	tb_b_in = 1'b0 ; tb_c_in = 1'b0 ;
#10
	tb_i0_in = 1'b1 ; tb_i1_in = 1'b0 ; tb_i2_in = 1'b1 ; tb_i3_in = 1'b0 ; 
	tb_b_in = 1'b0 ; tb_c_in = 1'b1 ;
#10
	tb_i0_in = 1'b1 ; tb_i1_in = 1'b0 ; tb_i2_in = 1'b1 ; tb_i3_in = 1'b0 ; 
	tb_b_in = 1'b1 ; tb_c_in = 1'b0 ;
#10
	tb_i0_in = 1'b1 ; tb_i1_in = 1'b0 ; tb_i2_in = 1'b1 ; tb_i3_in = 1'b0 ; 
	tb_b_in = 1'b1 ; tb_c_in = 1'b1 ;

#10 $finish;


end

initial begin 

	$dumpfile("tb_mux.vcd");
	$dumpvars(0,tb_mux);

end

endmodule

