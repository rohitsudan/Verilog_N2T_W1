`timescale 1ns/10ps
module testbench_simple;
parameter width = 16;
reg [width-1:0] in0;
reg [width-1:0] in1;
reg [width-1:0] in2;
reg [width-1:0] in3;
reg [1:0] sel;
wire [width-1:0] out;
mux4to1_16bit mymux(in0,in1,in2,in3,sel,out);
initial
begin
	$dumpfile("testbench_simple.vcd");//the name of the .vcd file should be as the same as the testbecnh file
	$dumpvars(0,testbench_simple);
	in0='b1111111111111111;
	in1='b0000000000000000;
	in2='b1111111000000000;
	in3='b0000000111111111;
	sel='b00;
	#1;
	in0='b1111111111111111;
	in1='b0000000000000000;
	in2='b1111111000000000;
	in3='b0000000111111111;
	sel='b01;
	#1;
	in0='b1111111111111111;
	in1='b0000000000000000;
	in2='b1111111000000000;
	in3='b0000000111111111;
	sel='b10;
	#1;
	in0='b1111111111111111;
	in1='b0000000000000000;
	in2='b1111111000000000;
	in3='b0000000111111111;
	sel='b11;
	#1;
	in0='b1111111111111111;
	in1='b0000000000000000;
	in2='b1111111000000000;
	in3='b0000000111111111;
	sel='b00;
        $finish;
end
endmodule
