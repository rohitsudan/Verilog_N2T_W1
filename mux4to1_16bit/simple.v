module mux4to1_16bit(in0,in1,in2,in3,sel,out);
parameter width = 16;
input [width-1:0]in0,in1,in2,in3;
input [1:0] sel;
output [width-1:0] out;
reg [width-1:0] out;
always @ (in0 or in1 or in2 or in3 or sel)
begin
    if(sel[1:0]=='b00)
    begin
    out[width-1:0] = in0[width-1:0];
    end
    else if(sel[1:0]=='b01)
    begin
    out[width-1:0] = in1[width-1:0];
    end
    else if(sel[1:0]=='b10)
    begin
    out[width-1:0] = in2[width-1:0];
    end
    else if(sel[1:0]=='b11)
    begin
    out[width-1:0] = in3[width-1:0];
    end
end 

endmodule
