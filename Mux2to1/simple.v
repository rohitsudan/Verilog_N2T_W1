module mux2to1(in0,in1,s,out);
input in0,in1,s;
output out;
reg out;
always @ (in0 or in1 or s)
begin
    if(s == 0)
    begin
    	out= in0;
    end
    else
    begin
	out = in1;
    end
end 

endmodule
