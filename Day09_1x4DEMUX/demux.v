module demux (o1_out,o2_out,o3_out,o4_out,a_in,s0_in,s1_in,n1_out,n2_out);

input a_in,s0_in,s1_in ;
output o1_out,o2_out,o3_out,o4_out;
inout n1_out,n2_out;

not dut1 (n1_out,s0_in);
not dut2 (n2_out,s1_in);
and dut3 (o1_out,n1_out,n2_out,a_in);
and dut4 (o2_out,n1_out,s1_in,a_in);
and dut5 (o3_out,s0_in,n2_out,a_in);
and dut6 (o4_out,s0_in,s1_in,a_in);

endmodule
