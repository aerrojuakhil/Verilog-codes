module johnsoncounter(clk,rst,q);
    input clk,rst;
    output reg [3:0]q;
    always@(posedge clk)
    begin
        if(!rst)
        q<=4'b0000;
        else
        q<={~{q[0]},{q[1]},{q[2]},{q[3]}};
    end
endmodule
