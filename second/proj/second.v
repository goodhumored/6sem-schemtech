module second(
	input wire [2:0] x,
	output reg [1:0] y
);
	always @* begin
		case(x)
			3'b000: y = 2'b11;
			3'b001: y = 2'b00;
			3'b010: y = 2'b11;
			3'b011: y = 2'b01;
			3'b100: y = 2'b01;
			3'b101: y = 2'b10;
			3'b110: y = 2'b10;
			3'b111: y = 2'b01;
			default: y = 2'b00;
		endcase
	end
endmodule