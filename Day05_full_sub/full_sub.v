module full_sub (d_out,b_out,a2_out,a3_out,a1_out,n_out,a_in,b_in,c_in);

input a_in,b_in,c_in;
output d_out,b_out;
inout a1_out,a2_out,a3_out,n_out;

xor dut1 (d_out,a_in,b_in,c_in);
not dut6 (n_out,a_in);
and dut2 (a1_out,n_out,b_in);
and dut3 (a2_out,n_out,c_in);
and dut4 (a3_out,b_in,c_in);
or dut5 (b_out,a1_out,a2_out,a3_out);

endmodule
