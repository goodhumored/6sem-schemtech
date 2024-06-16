module fifth(input c, input wrt, input[5:0] code, output wire o); 
reg [5:0] N;
reg [5:0] i;
reg res;
 
always @ (posedge c) 
begin 
  if (wrt) begin
    N <= code;
    i <= 0;
    res = 0;
  end else if (i < N) begin
	i <= i + 1;
	res = 1;
  end else begin 
	i <= 0;
	res = 0;
  end
end 
assign o = (res == 1);
endmodule 