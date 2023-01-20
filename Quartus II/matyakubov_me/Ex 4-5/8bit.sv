module 8bit(Din,clk,clear,enable,Q);
input [7:0]Din;
input clk,clear,enable;
output reg [7:0] Q;
always@(posedge clk)
if(enable)
begin
if(clear)
Q<=0;
else
Q<=Din;
end
endmodule