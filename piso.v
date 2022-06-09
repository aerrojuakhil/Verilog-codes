module piso(clk,clr,y,s);
    input clk,clr;
    input [3:0]s;
    output y;
    reg y;
    reg [3:0]temp;
    always@(posedge clk, negedge clk)
    begin
        if(clr)
        begin
           y<=1'b0;
           temp<=s;
        end
        else
        begin
           y<=temp[0];
           temp<= temp>>1'b1;
        end
   end
endmodule
