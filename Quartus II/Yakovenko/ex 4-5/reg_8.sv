module reg_8 (clock, A, B, C, mult, mult_shift, out);
input clock;
input reg [7:0] A;
input reg [7:0] B;
input reg [7:0] C;
output reg [7:0] out;
output reg [15:0] mult;
output reg [15:0] mult_shift;

always @(posedge clock) begin
	mult <= A*B;
end

assign mult_shift = mult <<< 2;

always @(posedge clock) begin
	out <= mult_shift + C;
end
endmodule