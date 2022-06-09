module sipo(clk,clr,y,s);
    input clk,clr,s;
    output[3:0]y;
    reg [3:0]y;
    reg [3:0]temp;
    always@(posedge clk)
    begin
        if(clr)
        temp = 4'b0000;
        else
        temp <= temp<<1;
        temp[0] <= s;
        y = temp;
    end
endmodule
        
