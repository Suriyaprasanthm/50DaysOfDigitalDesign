module blocking(
	output reg a, b, c
);
  initial begin
    a = 0; b = 0; c = 0;
    #1 a = 1;
       b = a;
       c = b;
  end
endmodule

