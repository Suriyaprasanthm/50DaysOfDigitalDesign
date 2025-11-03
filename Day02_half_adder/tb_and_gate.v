module tb_and_gate;

reg tb_a_in , tb_b_in;
wire tb_y_out;

and_gate dut(.y_out(tb_y_out), .a_in(tb_a_in), .b_in(tb_b_in) );

initial begin 

	tb_a_in = 1'b0 ; tb_b_in = 1'b0 ;
#10      tb_a_in = 1'b0 ; tb_b_in = 1'b1 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b0 ;
#10	tb_a_in = 1'b1 ; tb_b_in = 1'b1 ;
  
#10	$finish ;
end

initial begin

	$monitor ("tb_a_in = %b ,tb_b_in = %b,tb_y_out = %b",tb_a_in , tb_b_in , tb_y_out);
end

initial begin

       $dumpfile("tb_and_gate.vcd");
       $dumpvars(0,tb_and_gate);       
end 
endmodule
	
