module half_sub (d_out,b_out,n_out,a_in,b_in);

input a_in,b_in;
output d_out,b_out;
inout n_out;

xor dut1 (d_out,a_in,b_in);
not dut2 (n_out,a_in);
and dut3 (b_out,n_out,b_in);

endmodule
