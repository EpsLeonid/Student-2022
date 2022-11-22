module reg_8 (clock, A, B, C, out);
input clock;
input reg [7:0] A;
input reg [7:0] B;
input reg [7:0] C;
output [7:0] out;
always @(posedge clock) begin
    out <= A*B+C;
end
endmodule