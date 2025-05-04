`timescale 1ns/1ps
module HA (A,B,Carry,Sum);
input A,B;
output reg Carry,Sum;


 data flow
assign Carry = A&B;
assign Sum = A^B;

 //gate level
// and g1 (Carry,A,B);
// xor g2 (Sum,A,B);

////Behavioral model
//always @(*)
//begin 
//case({A,B})
//2'b00 : begin Sum = 0; Carry = 0; end
//2'b01 : begin Sum = 1; Carry = 0; end
//2'b10 : begin Sum = 1; Carry = 0; end
//2'b11 : begin Sum = 0; Carry = 1; end
//default : begin Sum = 0; Carry = 0; end
//
//endcase
//
//end




endmodule  
