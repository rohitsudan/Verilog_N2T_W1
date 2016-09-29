module notgate();
wire out;
reg in;
not n1(out,in);

initial begin
   $monitor("in=%b out=%b",in,out);
   in =0;
   #1;
   in=1;
   #1;
   in=0;
   #1;
   in=1;
   #1 $finish;
   end

endmodule
