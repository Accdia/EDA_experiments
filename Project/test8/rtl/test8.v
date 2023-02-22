module test8(clk,d_out,w_out);

input clk;
output [7:0]d_out;
output [7:0]w_out;

reg[31:0]sec_out=0;
reg[7:0]d_out;
reg[7:0]w_out;
reg[3:0]count=0;

always@(posedge clk)
begin
  sec_out<=sec_out+1'b1;       
  if(sec_out==32'd49999999)
   begin
    sec_out<=32'd0;
    count<=count+1'b1;
        end
    if(count==4'd7)
         begin
          count<=4'd0;
          end
          else begin
          count<=count+1'b1;
          end
			 case(count)
         4'd0:begin w_out<=8'b01111111;d_out<=8'b00111111;  end
         4'd1:begin w_out<=8'b10111111;d_out<=8'b00000110;  end
         4'd2:begin w_out<=8'b11011111;d_out<=8'b01011011;  end
         4'd3:begin w_out<=8'b11101111;d_out<=8'b11001111;  end
         4'd4:begin w_out<=8'b11110111;d_out<=8'b01100110;  end
         4'd5:begin w_out<=8'b11111011;d_out<=8'b01101101;  end
         4'd6:begin w_out<=8'b11111101;d_out<=8'b01111100;  end
         4'd7:begin w_out<=8'b11111110;d_out<=8'b00000111;  end
         default:begin w_out<=8'bz;d_out<=8'bz;  end
        endcase
end        
endmodule 