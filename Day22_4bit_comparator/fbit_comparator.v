module fbit_comparator (
    input  [3:0] a_in,
    input  [3:0] b_in,
    output reg a_eq_b,
    output reg a_gt_b,
    output reg a_lt_b
);

    always @(*) begin
        a_eq_b = (a_in == b_in);
        a_gt_b = (a_in >  b_in);
        a_lt_b = (a_in <  b_in);
    end

endmodule

