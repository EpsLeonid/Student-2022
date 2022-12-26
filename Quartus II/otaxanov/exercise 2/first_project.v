module first_project(a, b, c);

input a, b;
output c;
//assign c = (a & ~b) | (~a & b);
assign c = a * b;
endmodule