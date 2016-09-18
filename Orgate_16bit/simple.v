
module or16_bit(in0,in1,out);
parameter width = 16;
input [width-1:0]in0,in1;
output [width-1:0]out;
reg [width-1:0]out;
//not not1(out,in0);
always @ (in0 or in1)
begin
    out[width-1:0]=(in0[width-1:0] | in1[width-1:0]); 
end 

endmodule
