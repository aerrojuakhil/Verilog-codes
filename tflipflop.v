module tflipflop(clk,rst,t,q);
    input clk,rst,t;
    output reg q;
    always@(posedge clk)
    begin
        if(!rst)
        begin
            q<=0;
        end
        else
        begin
            if(t)
            q <= ~q;
            else
            q <= q;
        end
    end
endmodule
            
