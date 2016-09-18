module demux4to1_16bit(in,sel,out1,out2,out3,out4);
parameter width = 16;
input [width-1:0] in;
input [1:0] sel;
output [width-1:0] out1,out2,out3,out4;
reg [width-1:0] out1,out2,out3,out4;
always @ (in or sel)
begin
    if(sel[1:0]=='b00)
    begin
    out1[width-1:0] = in[width-1:0];
    out2[width-1:0]='b0000000000000000;
    out3[width-1:0]='b0000000000000000;
    out4[width-1:0]='b0000000000000000;
    end
    else if(sel[1:0]=='b01)
    begin
    out2[width-1:0] = in[width-1:0];
    out1[width-1:0]='b0000000000000000;
    out3[width-1:0]='b0000000000000000;
    out4[width-1:0]='b0000000000000000;
    end
    else if(sel[1:0]=='b10)
    begin
    out3[width-1:0] = in[width-1:0];
    out2[width-1:0]='b0000000000000000;
    out1[width-1:0]='b0000000000000000;
    out4[width-1:0]='b0000000000000000;
    end
    else if(sel[1:0]=='b11)
    begin
    out4[width-1:0] = in[width-1:0];
    out2[width-1:0]='b0000000000000000;
    out3[width-1:0]='b0000000000000000;
    out1[width-1:0]='b0000000000000000;
    end
end 

endmodule
