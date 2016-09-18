`timescale 1ns/10ps
module testbench_simple;
reg in,s;
wire out1,out2;
demux2to1 mymux(in,s,out1,out2);
initial
begin
	$dumpfile("testbench_simple.vcd");//the name of the .vcd file should be as the same as the testbecnh file
	$dumpvars(0,testbench_simple);
	in=0;
	s=0;
	#1;
	in=0;
	s=1;
	#1;
	in=1;
	s=0;
	#1;
	in=1;
	s=1;
	#1;
	in=0;
	s=0;	
        $finish;
end
endmodule
