`timescale 1ns/10ps
module testbench_simple;
reg in0,in1;
wire out;
xorgate mygate(in0,in1,out);
initial
begin
	$dumpfile("testbench_simple.vcd");//the name of the .vcd file should be as the same as the testbecnh file
	$dumpvars(0,testbench_simple);
	in0 = 0;
	in1 = 0;
	#1;
	in0 = 1;
	in1 =0;
	#1;
	in0 = 0;
	in1=1;
	#1;
	in0=1;
	in1=1;
	#1
	in0=0;
	in1=0;
        $finish;
end
endmodule
