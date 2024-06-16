module third ( 
  input wire c, 
  output reg [4:0] counter
); 

always @(negedge c)
  counter <= counter == 17 ? 0 : counter + 1;

endmodule