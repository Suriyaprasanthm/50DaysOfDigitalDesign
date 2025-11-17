module basicALU (
    input  [3:0] a_in,
    input  [3:0] b_in,
    input  [2:0] sel,
    output [4:0] y_out
);

wire [4:0] sum_out, sub_out, incA_out, decA_out;
wire [4:0] and_out, or_out, xor_out, notA_out;

assign sum_out  = a_in + b_in;
assign sub_out  = a_in - b_in;
assign incA_out = a_in + 1;
assign decA_out = a_in - 1;

assign and_out  = {1'b0, (a_in & b_in)};
assign or_out   = {1'b0, (a_in | b_in)};
assign xor_out  = {1'b0, (a_in ^ b_in)};
assign notA_out = {1'b0, (~a_in)};

assign y_out =
       (sel == 3'b000) ? sum_out  :
       (sel == 3'b001) ? sub_out  :
       (sel == 3'b010) ? incA_out :
       (sel == 3'b011) ? decA_out :
       (sel == 3'b100) ? and_out  :
       (sel == 3'b101) ? or_out   :
       (sel == 3'b110) ? xor_out  :
                         notA_out ;

endmodule



