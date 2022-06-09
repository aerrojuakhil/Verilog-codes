module sevensegment(y,s);
    input [3:0]s;
    output [6:0]y;
    reg [6:0]y;
    always@(*)
    begin
        case(s)
            3'b000: y<=7'b0000000;
            3'b001: y<=7'b0000001;
            3'b010: y<=7'b0000010;
            3'b011: y<=7'b0000011;
            3'b100: y<=7'b0000100;
            3'b101: y<=7'b0000101;
            3'b110: y<=7'b0000110;
            3'b111: y<=7'b0000111;
        endcase
    end
endmodule
