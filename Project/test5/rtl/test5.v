module test5(f,a,b,clk,cr);
	   input [7:0]a,b;
		input clk,cr;
	   output reg[15:0]f;
	   integer i,b1;
		always @(posedge clk)
		begin
		if(cr==0)
			f=16'b0000_0000_0000_0000;
		else
		begin
			b1=a;
			f = 16'b0000_0000_0000_0000;
			for (i=0;i<8;i=i+1)
			begin
				if(b[i] == 1) 
				f = f + b1;
				b1 = b1*2;
				 end
			end 
		end
endmodule 