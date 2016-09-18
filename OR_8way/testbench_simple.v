`timescale 1ns/10ps
module testbench_simple;
parameter width = 8;
reg [width-1:0] in;
wire out;
OR_8way myOR(in,out);
initial
begin
	$dumpfile("testbench_simple.vcd");//the name of the .vcd file should be as the same as the testbecnh file
	$dumpvars(0,testbench_simple);
	in='b11111111;
	#10;
	in='b00000000;
	#10;
	in='b10101010;
	#10;
	in='b00000000;
	#10;
	in='b11111111;
        $finish;
end
endmodule
