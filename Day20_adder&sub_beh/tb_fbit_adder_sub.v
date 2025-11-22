module tb_fbit_adder_sub ;

reg [3:0] tb_a_in ;
reg [3:0] tb_b_in ;
reg       tb_mode ;
wire [3:0] tb_out ;
wire       tb_carry_out ;
wire       tb_borrow_out ;
integer i,j,k ;

fbit_adder_sub dut (
    .a_in(tb_a_in),
    .b_in(tb_b_in),
    .out(tb_out),
    .carry_out(tb_carry_out),
    .borrow_out(tb_borrow_out),
    .mode(tb_mode)
);

initial begin

    for(i = 0; i < 16; i = i + 1) begin
        for(j = 0; j < 16; j = j + 1) begin
            for( k = 0; k < 2; k = k + 1) begin

                tb_a_in = i;
                tb_b_in = j;
                tb_mode = k;
                #10;

            end
        end
    end

    $finish;   
end

initial begin 
    $dumpfile("tb_fbit_adder_sub.vcd");
    $dumpvars(0, tb_fbit_adder_sub);
end

endmodule

