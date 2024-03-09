module second1(
	input wire [2:0] x,
	output reg [1:0] y
);
	reg [7:0] decoder;
	wire [3:0] encoder;
	always @*
	begin
		case(x)
			3'd0: decoder = 8'b00000001;
			3'd1: decoder = 8'b00000010;
			3'd2: decoder = 8'b00000100;
			3'd3: decoder = 8'b00001000;
			3'd4: decoder = 8'b00010000;
			3'd5: decoder = 8'b00100000;
			3'd6: decoder = 8'b01000000;
			3'd7: decoder = 8'b10000000;
		endcase
	end
	assign encoder[0] = decoder[1];
	assign encoder[1] = decoder[3] | decoder[4] | decoder[7];
	assign encoder[2] = decoder[6] | decoder[5];
	assign encoder[3] = decoder[0] | decoder[2];
	always @(decoder)
	begin
		case (encoder)
			4'b0001: y = 2'b00;
			4'b0010: y = 2'b01;
			4'b0100: y = 2'b10;
			4'b1000: y = 2'b11;
		endcase
	end
endmodule