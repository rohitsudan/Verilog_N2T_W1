`timescale 1ns/10ps
module testbench_simple;
parameter width = 16;
reg [width-1:0] in0;
reg [width-1:0] in1;
reg s;
wire [width-1:0] out;
mux16_bit mymux(in0,in1,s,out);
initial
begin
	$dumpfile("testbench_simple.vcd");//the name of the .vcd file should be as the same as the testbecnh file
	$dumpvars(0,testbench_simple);
	in0='b0000001011110011;
	in1='b0000000000000000;
	s=0;
	#1;
	in0='b0000001011110011;
	in1='b1111111111111111;
	s=1;
	#1;
	in0='b0000001011110011;
	in1='b0000000000000000;
	s=0;
        $finish;
end
endmodule
