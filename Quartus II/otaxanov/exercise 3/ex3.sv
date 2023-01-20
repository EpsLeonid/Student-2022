module ex3 (clock, d, out);
input clock;
input reg d;
output out;
always @(posedge clock) begin
    out <= d;
end
endmodule
