module tb_fbit_alu_beh ;

reg  [3:0] tb_a_in ;
reg  [3:0] tb_b_in ;
reg  [3:0] tb_sel ;
wire [4:0] tb_out ;
wire tb_c_out, tb_b_out, tb_c_flag, tb_b_flag ;

integer i,j,k;

fbit_alu_beh dut (
    .a_in(tb_a_in),
    .b_in(tb_b_in),
    .sel(tb_sel),
    .out(tb_out),
    .c_out(tb_c_out),
    .b_out(tb_b_out),
    .c_flag(tb_c_flag),
    .b_flag(tb_b_flag)
);

initial begin
    for(i=0;i<16;i=i+1)begin
        for(j=0;j<16;j=j+1)begin
            for(k=0;k<16;k=k+1)begin
                tb_a_in = i ;
                tb_b_in = j ;
                tb_sel = k ;
                #5;
            end
        end
    end
    $finish ;
end

initial begin 
    $dumpfile("tb_fbit_alu_beh.vcd");
    $dumpvars(0,tb_fbit_alu_beh);
end

initial begin
    $monitor("t=%0t | A=%b B=%b SEL=%b | OUT=%b | C=%b B=%b CF=%b BF=%b",
              $time, tb_a_in, tb_b_in, tb_sel, tb_out,
              tb_c_out, tb_b_out, tb_c_flag, tb_b_flag);
end

endmodule
 

