module tb_fbit_comparator;

reg  [3:0] tb_a_in;
reg  [3:0] tb_b_in;
wire tb_a_eq_b;
wire tb_a_gt_b;
wire tb_a_lt_b;

integer i, j;
fbit_comparator dut (
    .a_in(tb_a_in),
    .b_in(tb_b_in),
    .a_eq_b(tb_a_eq_b),
    .a_gt_b(tb_a_gt_b),
    .a_lt_b(tb_a_lt_b)
);

initial begin
    for(i = 0; i < 16; i = i + 1) begin
        for(j = 0; j < 16; j = j + 1) begin
            tb_a_in = i;
            tb_b_in = j;
            #5;
        end
    end
    $finish;
end

initial begin
    $monitor("time=%0t | A=%b B=%b | EQ=%b GT=%b LT=%b",
              $time, tb_a_in, tb_b_in, tb_a_eq_b, tb_a_gt_b, tb_a_lt_b);
end

initial begin
    $dumpfile("tb_fbit_comparator.vcd");
    $dumpvars(0, tb_fbit_comparator);
end

endmodule

