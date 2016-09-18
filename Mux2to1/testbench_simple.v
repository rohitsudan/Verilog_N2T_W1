
`timescale 1ns/10ps
module testbench_simple;
reg in0,in1,s;
wire out;
mux2to1 mymux(in0,in1,s,out);
initial
begin
	$dumpfile("testbench_simple.vcd");//the name of the .vcd file should be as the same as the testbecnh file
	$dumpvars(0,testbench_simple);
	in0 = 0;
	in1 = 0;
	s=0;
	#1;
	in0 = 0;
	in1 = 0;
	s=1;
	#1;
	in0 = 0;
	in1 = 1;
	s=0;
	#1;
	in0 = 0;
	in1 = 1;
	s=1;
	#1
	in0 = 1;
	in1 = 0;
	s=0;
	#1;
	in0 = 1;
	in1 = 0;
	s=1;
	#1;
	in0 = 1;
	in1 = 1;
	s=0;
	#1;
	in0 = 1;
	in1 = 1;
	s=1;
	#1;
	in0 = 0;
	in1 = 0;
	s=0;
        $finish;
end
endmodule
