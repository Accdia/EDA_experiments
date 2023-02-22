module test4(a,b,c,clk,cr);
	   input [7:0]a,b;
		input clk,cr;//输入
	   output reg[15:0]c;
	   integer i,b1;
     always @(posedge clk)
	  begin
	    if(cr==0)
		    c=16'b0000_0000_0000_0000;
	    else
            begin
	           b1=a;
	           c = 16'b0000_0000_0000_0000;//结果赋初值
	           for (i=0;i<8;i=i+1)
		          begin
			         if(b[i] == 1) //如果为一就相加
				        c = c + b1;
		              b1 = b1*2;//	移位
		          end 
            end
			end
endmodule
