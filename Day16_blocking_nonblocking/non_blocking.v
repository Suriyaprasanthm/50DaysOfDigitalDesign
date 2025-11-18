module non_blocking(
	output reg x, y, z
);
  initial begin
    x = 0; y = 0; z = 0;
    #1 x <= 1;
       y <= x;
       z <= y;
  end
endmodule

