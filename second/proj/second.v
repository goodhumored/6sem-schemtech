module multiplexer(input [1:0] selector, input [3:0] outputs, output reg out);
  always @* 
  begin
    case(selector)
      2'b00: out = outputs[0];
      2'b01: out = outputs[1];
      2'b10: out = outputs[2];
      2'b11: out = outputs[3];
      default: out = 1'b0;
    endcase
  end
endmodule

module second(input [2:0] x, output [1:0] y);
  multiplexer multiplexer1({x[2], x[1]}, {~x[0], ~x[0], x[0], ~x[0]}, y[1]);
  multiplexer multiplexer2({x[2], x[1]}, {~x[0], 1'b1, ~x[0], x[0]}, y[0]);
endmodule