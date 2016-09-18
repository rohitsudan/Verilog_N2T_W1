`timescale 1ns/10ps
module testbench_simple;
parameter width = 16;
reg [width-1:0] in;
reg [2:0] sel;
wire [width-1:0] out1,out2,out3,out4,out5,out6,out7,out8;
mux8to1_16bit mymux(in,sel,out1,out2,out3,out4,out5,out6,out7,out8);
initial
begin
	$dumpfile("testbench_simple.vcd");//the name of the .vcd file should be as the same as the testbecnh file
	$dumpvars(0,testbench_simple);
	in='b1111111111111111;
	sel='b000;
	#1;
	sel='b001;
	#1;
	sel='b010;
	#1;
	sel='b011;
	#1;
	sel='b100;
	#1;
	sel='b101;
	#1;
	sel='b110;
	#1;
	sel='b111;
	#1;
	sel='b111;
        $finish;
end
endmodule
