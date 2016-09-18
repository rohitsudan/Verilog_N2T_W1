module mux8to1_16bit(in,sel,out1,out2,out3,out4,out5,out6,out7,out8);
parameter width = 16;
input [width-1:0]in;
input [2:0] sel;
output [width-1:0] out1,out2,out3,out4,out5,out6,out7,out8;
reg [width-1:0] out1,out2,out3,out4,out5,out6,out7,out8;

always @ (in or sel)
begin
    if(sel[2:0]=='b000)
    begin
    out1[width-1:0] = in[width-1:0];
    out2[width-1:0]='b0000000000000000;
    out3[width-1:0]='b0000000000000000;
    out4[width-1:0]='b0000000000000000;
    out5[width-1:0]='b0000000000000000;
    out6[width-1:0]='b0000000000000000;
    out7[width-1:0]='b0000000000000000;
    out8[width-1:0]='b0000000000000000;
    end
    else if(sel[2:0]=='b001)
    begin
    out2[width-1:0] = in[width-1:0];
    out1[width-1:0]='b0000000000000000;
    out3[width-1:0]='b0000000000000000;
    out4[width-1:0]='b0000000000000000;
    out5[width-1:0]='b0000000000000000;
    out6[width-1:0]='b0000000000000000;
    out7[width-1:0]='b0000000000000000;
    out8[width-1:0]='b0000000000000000;
    end
    else if(sel[2:0]=='b010)
    begin
    out3[width-1:0] = in[width-1:0];
    out2[width-1:0]='b0000000000000000;
    out1[width-1:0]='b0000000000000000;
    out4[width-1:0]='b0000000000000000;
    out5[width-1:0]='b0000000000000000;
    out6[width-1:0]='b0000000000000000;
    out7[width-1:0]='b0000000000000000;
    out8[width-1:0]='b0000000000000000;
    end
    else if(sel[2:0]=='b011)
    begin
    out4[width-1:0] = in[width-1:0];
    out2[width-1:0]='b0000000000000000;
    out3[width-1:0]='b0000000000000000;
    out1[width-1:0]='b0000000000000000;
    out5[width-1:0]='b0000000000000000;
    out6[width-1:0]='b0000000000000000;
    out7[width-1:0]='b0000000000000000;
    out8[width-1:0]='b0000000000000000;
    end
    else if(sel[2:0]=='b100)
    begin
    out5[width-1:0] = in[width-1:0];
    out2[width-1:0]='b0000000000000000;
    out3[width-1:0]='b0000000000000000;
    out4[width-1:0]='b0000000000000000;
    out1[width-1:0]='b0000000000000000;
    out6[width-1:0]='b0000000000000000;
    out7[width-1:0]='b0000000000000000;
    out8[width-1:0]='b0000000000000000;
    end
    else if(sel[2:0]=='b101)
    begin
    out6[width-1:0] = in[width-1:0];
    out2[width-1:0]='b0000000000000000;
    out3[width-1:0]='b0000000000000000;
    out4[width-1:0]='b0000000000000000;
    out5[width-1:0]='b0000000000000000;
    out1[width-1:0]='b0000000000000000;
    out7[width-1:0]='b0000000000000000;
    out8[width-1:0]='b0000000000000000;
    end
    else if(sel[2:0]=='b110)
    begin
    out7[width-1:0] = in[width-1:0];
    out2[width-1:0]='b0000000000000000;
    out3[width-1:0]='b0000000000000000;
    out4[width-1:0]='b0000000000000000;
    out5[width-1:0]='b0000000000000000;
    out6[width-1:0]='b0000000000000000;
    out1[width-1:0]='b0000000000000000;
    out8[width-1:0]='b0000000000000000;
    end
    else if(sel[2:0]=='b111)
    begin
    out8[width-1:0] = in[width-1:0];
    out2[width-1:0]='b0000000000000000;
    out3[width-1:0]='b0000000000000000;
    out4[width-1:0]='b0000000000000000;
    out5[width-1:0]='b0000000000000000;
    out6[width-1:0]='b0000000000000000;
    out7[width-1:0]='b0000000000000000;
    out1[width-1:0]='b0000000000000000;
    end
end 

endmodule
