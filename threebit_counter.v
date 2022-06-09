module threebit_counter(clk,rst,s);
    input clk,rst;
    output [2:0]s;
    reg [2:0]count;
    always@(posedge clk or negedge clk)
    begin
       if(rst==0)
       begin
          count<=0;
       end
       else
       begin
           count = count+1;
       end
   end
endmodule
       
