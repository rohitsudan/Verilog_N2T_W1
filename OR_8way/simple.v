module OR_8way(in,out);
parameter width = 8;
input [width-1:0]in;
output out;
integer i=0;
reg out=0;
always @ (in)
begin
	out =0;
	for(i=0;i<8;i=i+1)begin
	out = out | in[i];
	#1;
	end
	
end 

endmodule
//note that the variables in verilog should be declared as integer and have a careful note of it
//$display(" Address = %g  Data = %h",i,ram[i]);
// %g is used for displaying integers 
// and %h is used for displaying reg variables
