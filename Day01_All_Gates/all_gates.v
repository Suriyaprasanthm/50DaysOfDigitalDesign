module all_gates (and_out,or_out,not_out_a,not_out_b,nand_out,nor_out,xor_out,xnor_out,buf_out_a,buf_out_b,a_in,b_in);

input a_in,b_in;
output and_out,or_out,not_out_a,not_out_b,nand_out,nor_out,xor_out,xnor_out,buf_out_a,buf_out_b;

and dut1 (and_out,a_in,b_in);
or dut2 (or_out,a_in,b_in);
not dut3 (not_out_a,a_in);
not dut4 (not_out_b,b_in);
nand dut5 (nand_out,a_in,b_in);
nor dut6 (nor_out,a_in,b_in);
xnor dut7 (xnor_out,a_in,b_in);
xor dut8 (xor_out,a_in,b_in);
buf dut9 (buf_out_a,a_in);
buf dut10 (buf_out_b,b_in);

endmodule





