module mux16_bit(in0,in1,s,out);
parameter width = 16;
input [width-1:0]in0,in1;
input s;
output [width-1:0]out;
reg [width-1:0]out;
//not not1(out,in0);
always @ (in0 or in1 or s)
begin
	if(s==0)
	begin
	out[width-1:0] = in0[width-1:0];
	end
	else
	begin
	out[width-1:0] = in1	[width-1:0];
	end
end 

endmodule
