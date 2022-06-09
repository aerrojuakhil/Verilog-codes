module dflipflop(q,qb,clk,d,rst);
   input clk,d,rst;
   output q,qb;
   reg q,qb;
   always@(posedge clk or negedge rst)
   begin
      if(!rst)
      begin
         q<=1'b0;
         qb<=1'b1;
      end
      else
      begin
         q=d;
         qb=~d;
      end
   end
endmodule
