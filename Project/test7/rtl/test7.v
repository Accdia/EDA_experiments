module test7(
	input clk_50,
	input rst_n,
	output reg [7:0]led
);
reg [24:0]counter;

// 初始化
initial
	begin
		led <= 8'b11111111;
		counter <= 25'd0;
	end

// 计数	
always @ (posedge clk_50 or negedge rst_n)
begin
	if(!rst_n) begin
		counter <= 25'd0;
	end else if(counter == 25'd24999999) begin // 0.5秒换灯
		counter <= 25'd0;
	end else begin
		counter <= counter + 25'd1;
	end
end

// 移位
always @ (posedge clk_50 or negedge rst_n)
begin
	if(!rst_n) begin
		led <= 8'b01111111;  // 初始亮一个灯，便于循环展示
	end else if(counter == 25'd24999999) begin  // o.5秒换灯
		led[7:0] <= {led[6:0],led[7]};  // 拼接移位
	end else begin
		led <= led;
	end
end
endmodule

