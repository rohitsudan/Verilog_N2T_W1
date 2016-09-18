module mux8to1_16bit(in0,in1,in2,in3,in4,in5,in6,in7,sel,out);
parameter width = 16;
input [width-1:0]in0,in1,in2,in3,in4,in5,in6,in7;
input [2:0] sel;
output [width-1:0] out;
reg [width-1:0] out;

always @ (in0 or in1 or in2 or in3 or in4 or in5 or in6 or in7 or sel)
begin
    if(sel[2:0]=='b000)
    begin
    out[width-1:0] = in0[width-1:0];
    end
    else if(sel[2:0]=='b001)
    begin
    out[width-1:0] = in1[width-1:0];
    end
    else if(sel[2:0]=='b010)
    begin
    out[width-1:0] = in2[width-1:0];
    end
    else if(sel[2:0]=='b011)
    begin
    out[width-1:0] = in3[width-1:0];
    end
    else if(sel[2:0]=='b100)
    begin
    out[width-1:0] = in4[width-1:0];
    end
    else if(sel[2:0]=='b101)
    begin
    out[width-1:0] = in5[width-1:0];
    end
    else if(sel[2:0]=='b110)
    begin
    out[width-1:0] = in6[width-1:0];
    end
    else if(sel[2:0]=='b111)
    begin
    out[width-1:0] = in7[width-1:0];
    end
end 

endmodule
