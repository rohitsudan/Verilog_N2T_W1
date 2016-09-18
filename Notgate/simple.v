module notgate(in,out);
input in;
output out;
reg out;
/*input in;
output out;
not not1(out,in);*/
always @ (in)
begin
	if(in==0)
	begin
	out=1;
	end
	else
	begin
	out=0;
	end
end
endmodule

