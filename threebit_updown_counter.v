module threebit_updown_count(count,mode,clk,rst);
   output reg [2:0]count=3'd0;
   input clk,rst,mode;
   always @(posedge clk or negedge rst)
   begin
      if(!rst)
      begin
         count=0;
      end
      else
      begin
         if(mode==1&&count<3'd7)
         count=count+1;
         else if(mode==1&&count==3'd7)
         count=3'd0;
         else if(mode==0&&count>3'd0)
         count=count-1;
         else
         count=3'd7;
         end
    end
endmodule
