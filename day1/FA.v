`timescale 1ns/10ps
module FA1(A,B,C,S,COUT);
input A,B,C;
output reg S,COUT;

always @(*)

begin 

case({A,B,C})

3'b000 : {COUT,S} = 2'b00;
3'b001 : {COUT,S} = 2'b01;
3'b010 : {COUT,S} = 2'b01;
3'b011 : {COUT,S} = 2'b10;
3'b100 : {COUT,S} = 2'b01;   /// behav
3'b101 : {COUT,S} = 2'b10;
3'b110 : {COUT,S} = 2'b10;
3'b111 : {COUT,S} = 2'b11;

//assign {COUT,S} = A+B+C;

//xor g1 (S,A,B,C);
//and g2 (t1,A,B);             ///////// gate level
//and g3 (t2,B,C);
//and g4 (t3,A,C);
//or g5 (COUT,t1,t2,t3);


// assign S = A^B^C;
// assign COUT = ((A&B)|(B&C)|(C&A));   ///Data flow

endcase 

end 





endmodule 
