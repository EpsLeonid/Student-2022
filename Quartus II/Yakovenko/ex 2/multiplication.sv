module multiplication ( A, B, C, clock);
input reg [7:0] A;
input reg [7:0] B;
output reg [7:0] C;
input clock;
always @(posedge clock) begin
    C <= A*B;
end
endmodule