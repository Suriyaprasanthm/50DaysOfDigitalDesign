module tb_b_nb;
  wire a, b, c;
  wire x, y, z;

  blocking dut1 (.a(a),.b(b),.c(c));
  non_blocking dut2 (.x(x),.y(y),.z(z));

  initial begin
    #2;
    $display("Blocking:     a=%b b=%b c=%b", a, b, c);
    $display("Non-Blocking: x=%b y=%b z=%b", x, y, z);
  end

  initial begin
    $dumpfile("tb_b_nb.vcd");
    $dumpvars(0, tb_b_nb);
    end

endmodule

