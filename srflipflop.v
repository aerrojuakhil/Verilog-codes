module srflipflop(q,qb,clk,s,r,rst);
   input clk,s,r,rst;
   output q,qb;
   reg q,qb;
   always @(posedge clk or negedge rst)
   begin
      if(!rst)
      begin
         q<=1'b0;
         qb<=1'b1;
      end
      else
      begin
         if((s==1'b0)&&(r==1'b0))
         begin
            q=q;
            qb=~q;
         end
         else if((s==1'b0)&&(r==1'b1))
         begin
            q=1'b0;
            qb=~q;
         end
         else if((s==1'b1)&&(r==1'b0))
         begin
            q=1'b1;
            qb=~q;
         end
         else if((s==1'b1)&&(r==1'b1))
         begin
            q=1'bx;
            qb=1'bx;
         end
         else
         begin
            q=1'b0;
            qb=~q;
         end
      end
   end
endmodule
