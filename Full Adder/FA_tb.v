`timescale 1ns/10ps

module FA1_tb;

reg A,B,C;
wire COUT,S;

FA1 dut (A,B,C,S,COUT);

initial 
begin

A=0;B=0;C=0;
#10 A=0;B=0;C=1;
#10 A=0;B=1;C=0;
#10 A=0;B=1;C=1;
#10 A=1;B=0;C=0;
#10 A=1;B=0;C=1;
#10 A=1;B=1;C=0;
#10 A=1;B=1;C=1;
#10 $finish;






 
end 
endmodule 
