module gray_to_binary #(parameter N = 8)(
    input  wire [N-1:0] gray,
    output reg  [N-1:0] binary
);

    integer i;

    always @(*) begin
        binary[N-1] = gray[N-1];

        for (i = N-2; i >= 0; i = i - 1) begin
            binary[i] = binary[i+1] ^ gray[i];
        end
    end

endmodule

