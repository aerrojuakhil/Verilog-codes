module alu(y,s,a,b);
    input [3:0]a,b;
    input [1:0]s;
    output [7:0]y;
    reg [7:0]y;
    always@(*)
    begin
        case(s)
            3'b00:y<=a+b;
            3'b01:y<=a-b;
            3'b10:y<=a*b;
            3'b11:y<=a/b;
        endcase
    end
endmodule
    
