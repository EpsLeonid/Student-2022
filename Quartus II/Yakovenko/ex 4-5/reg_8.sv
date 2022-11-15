module reg_8 (clock, A, B, C, out);
input reg clock;
input reg [7:0] A;
input reg [7:0] B;
input reg [7:0] C;
output [7:0] out;
always @(posedge clock) begin
    out <= A[7:0]*B[7:0]+C[7:0];
end
endmodule