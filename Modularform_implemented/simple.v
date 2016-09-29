/*module notgate(in,out);
input in;
output out;
reg out;*/
/*input in;
output out;
not not1(out,in);*/
/*always @ (in)
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
endmodule*/
// this is a variation with writing both the hdl code and the testbench in 2 sepearte files

// now in this code both are written in the same file

module notgate();
wire out;
reg in;
not n1(out,in);

initial begin
   $monitor("in=%b out=%b",in,out);
   in =0;
   #1;
   in=1;
   #1;
   in=0;
   #1;
   in=1;
   #1 $finish;
   end

endmodule
