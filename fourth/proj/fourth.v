module fourth(input c, output reg out, output reg[15:0] q); 
 
reg dsi;

always @ (negedge c) 
begin 
  dsi = ~q[0] 
    & ~q[1]
    & ~q[2]
    & ~q[3]
    & ~q[4]
    & ~q[5]
    & ~q[6]
    & ~q[7]
    & ~q[8]
    & ~q[9]
    & ~q[10]
    & ~q[11] 
    & ~q[12] 
    & ~q[13] 
    & ~q[14] 
    & ~q[15];
  q<={q[15:0], dsi};
  out = q[0]; 
end 
endmodule 