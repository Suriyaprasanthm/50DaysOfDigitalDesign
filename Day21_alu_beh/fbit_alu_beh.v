module fbit_alu_beh (
    input  [3:0] a_in,
    input  [3:0] b_in,
    input  [3:0] sel,
    output reg [4:0] out,
    output reg c_out, b_out,
    output reg c_flag, b_flag
);

    reg [4:0] temp;

    always @(*) begin

        out     = 5'b00000;
        c_out   = 1'b0;
        b_out   = 1'b0;
        c_flag  = 1'b0;
        b_flag  = 1'b0;

        case(sel)
            4'b0000: begin
                temp   = a_in + b_in;
                {c_out, out} = temp;
                c_flag = c_out;
            end

            4'b0001: begin
                temp = a_in - b_in;
                b_out = (a_in < b_in);
                out   = temp[3:0];
                b_flag = b_out;
            end

            4'b0010: begin
                temp = b_in - a_in;
                b_out = (b_in < a_in);
                out   = temp[3:0];
                b_flag = b_out;
            end

            4'b0011: begin
                temp = a_in + 1;
                {c_out, out} = temp;
                c_flag = c_out;
            end

            4'b0100: begin
                temp = a_in - 1;
                b_out = (a_in < 1);
                out   = temp[3:0];
                b_flag = b_out;
            end

            4'b0101: out = a_in & b_in;
            4'b0110: out = a_in | b_in;     
            4'b0111: out = a_in ^ b_in;        

            4'b1000: out = ~a_in;           
            4'b1001: out = {a_in[2:0], a_in[3]}; 
            4'b1010: out = {a_in[0], a_in[3:1]}; 

            4'b1011: out = a_in << 1;           
            4'b1100: out = a_in >> 1;          

            4'b1101: out = (a_in > b_in) ? 5'b00001 : 5'b00000; 
            4'b1110: out = (a_in == b_in) ? 5'b00001 : 5'b00000;

            4'b1111: out = 5'b00000;
        endcase
    end

endmodule

			

		

