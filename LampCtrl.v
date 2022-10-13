
`include "Decoder.v"
`include "OR.v"

module LampCtrl(
 	input wire clk, 
	input wire S1, 
	input wire S2, 
	input wire S3,
	output wire F
	);
    wire K1;
    wire K2;
    Decoder d1(S1,S2,S3,K1,K2);
    OR d2(K1,K2,F);

	

endmodule 