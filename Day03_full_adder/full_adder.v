module full_adder (s_out,ca_out,a2_out,a3_out,a1_out,a_in,b_in,c_in);

input a_in,b_in,c_in;
output s_out,ca_out;
inout a1_out,a2_out,a3_out;

xor dut1 (s_out,a_in,b_in,c_in);
and dut2 (a1_out,a_in,b_in);
and dut3 (a2_out,a_in,c_in);
and dut4 (a3_out,b_in,c_in);
or dut5 (ca_out,a1_out,a2_out,a3_out);

endmodule

