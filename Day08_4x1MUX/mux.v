module mux(y_out,i0_in,i1_in,i2_in,i3_in,b_in,c_in,nb_out,nc_out,a1_out,a2_out,a3_out,a4_out);

input i0_in,i1_in,i2_in,i3_in,b_in,c_in;
inout nb_out,nc_out,a1_out,a2_out,a3_out,a4_out;
output y_out;

not dut1 (nb_out,b_in);
not dut2 (nc_out,c_in);
and dut3 (a1_out,nb_out,nc_out,i0_in);
and dut4 (a2_out,nb_out,c_in,i1_in);
and dut5 (a3_out,b_in,nc_out,i2_in);
and dut6 (a4_out,b_in,c_in,i3_in);
or dut7 (y_out,a1_out,a2_out,a3_out,a4_out);

endmodule


