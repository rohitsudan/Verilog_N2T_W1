module not16_bit(in0,out);
parameter width = 16;
input [width-1:0]in0;
output [width-1:0]out;
reg [width-1:0]out;
//not not1(out,in0);
always @ (in0 )
begin
    out[width-1:0]=~(in0[width-1:0]); 
end 

endmodule
