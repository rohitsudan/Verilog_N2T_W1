`timescale 1ns/10ps
module testbench_simple;
parameter width = 16;
reg [width-1:0] in0;
wire [width-1:0] out;
not16_bit mymux(in0,out);
initial
begin
	$dumpfile("testbench_simple.vcd");//the name of the .vcd file should be as the same as the testbecnh file
	$dumpvars(0,testbench_simple);
	in0='b0000001011110011;
	#1;
	in0='b1010001011110011;
	#1;
	in0='b1010001011110011;
	#1;
	in0='b1010101010110011;
	#1;
	in0='b0000000000000000;
        $finish;
end
endmodule
