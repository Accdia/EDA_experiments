`timescale 1ns/1ns
module test3(out,reset,clk);
input reset,clk;
output[3:0] out;
reg[3:0] out;

always @(posedge clk)
begin
if (reset)
out<=0; //同步复位
else
out<=out+1'b1; //计数
end
endmodule
