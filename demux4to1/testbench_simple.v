`timescale 1ns/10ps
module testbench_simple;
parameter width = 16;
reg [width-1:0] in;
reg [1:0] sel;
wire [width-1:0] out1,out2,out3,out4;
demux4to1_16bit mymux(in,sel,out1,out2,out3,out4);
initial
begin
	$dumpfile("testbench_simple.vcd");//the name of the .vcd file should be as the same as the testbecnh file
	$dumpvars(0,testbench_simple);
	in='b1111111111111111;
	sel='b00;
	#1;
	sel='b01;
	#1;
	sel='b10;
	#1;
	sel='b11;
	#1;
	sel='b00;
        $finish;
end
endmodule
