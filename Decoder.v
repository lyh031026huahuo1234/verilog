module Decoder(
    input wire S1,
    input wire S2,
    input wire S3,
    output wire K1,
    output wire K2
);

reg [2:0] test;
reg temp1;
reg temp2;

always @(*) begin


test = {S3,S2,S1};
temp1 = 1'b0;
temp2 = 1'b0;

case (test) 

3'b001:temp1 = 1'b1;
3'b111:temp2 = 1'b1;



endcase

end
assign K1 = temp1;
assign K2 = temp2;
 
endmodule