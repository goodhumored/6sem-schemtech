module first(input x0, x1, x2, output y0, y1);
  assign y0 = ~x0 & ~(x1 & x2) | x0 & x1;
  assign y1 = ~x0 & (~x2 | x1) | x0 & ~x1 & x2;
endmodule