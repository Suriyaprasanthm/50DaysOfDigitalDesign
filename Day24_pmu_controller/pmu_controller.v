module pmu_controller (
    input  [7:0] temp,
    input  [7:0] battery,
    input  [7:0] load,
    output reg [1:0] mode
);

always @(*) begin
    if (temp > 8'd200)
        mode = 2'b11;        // SHUTDOWN
    else if (battery < 8'd50 && load < 8'd30)
        mode = 2'b01;        // POWER-SAVE
    else if (battery > 8'd150 && load > 8'd70)
        mode = 2'b10;        // PERFORMANCE
    else
        mode = 2'b00;        // NORMAL
end

endmodule

