module tb_parity_generator;

    reg  [7:0] tb_data_in;
    wire tb_even_parity;
    wire tb_odd_parity;

    parity_generator dut (
        .data_in(tb_data_in),
        .even_parity(tb_even_parity),
        .odd_parity(tb_odd_parity)
    );

    integer k;

    initial begin
        for (k = 0; k < 255; k = k + 1) begin
            tb_data_in = k;
	    #1;
        end
	$finish;
end

	initial begin
		      $dumpfile("tb_parity_generator.vcd");
                      $dumpvars(0, tb_parity_generator);

	end
endmodule

