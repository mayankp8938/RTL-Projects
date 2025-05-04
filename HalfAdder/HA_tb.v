`timescale 1ns/1ps
module HA_tb();
reg A,B;
wire Carry,Sum;

HA dut (A,B,Carry,Sum);

initial begin 


A = 1'b0;B = 1'b0;
#5 A = 1'b0;B = 1'b1;
#5 A = 1'b1;B = 1'b0;
#5 A = 1'b1;B = 1'b1;

#5 $finish;
end 
endmodule 
