module demux2to1(in,s,out1,out2);
input in,s;
output out1,out2;
reg out1,out2;
always @ (in or s)
begin
    if(s == 0)
    begin
    	out1=in;
	out2=0;
    end
    else
    begin
	out2 = in;
	out1 = 0;
    end
end 

endmodule
