module tb_gray_to_binary;

    parameter N = 8;

    reg  [N-1:0] gray;
    wire [N-1:0] binary;

    gray_to_binary #(N) dut (
        .gray(gray),
        .binary(binary)
    );

    integer k;

    initial begin
    	    for (k = 0; k < 16; k = k + 1) begin
            gray = (k >> 1) ^ k;   // converting k (binary) into Gray for testing
            #1;
        end
        $finish;
    end
    initial begin 
	    $dumpfile("tb_gray_to_binary.vcd");
	    $dumpvars(0,tb_gray_to_binary);
    end

endmodule

