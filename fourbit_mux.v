//4bit multiplexer
module foubit_mux(y,s,i);
    input [1:0]s;
    input [3:0]i;
    output y;
    reg y;
    always@(*)
    begin
        case(s)
            2'b00: y<=i[0];
            2'b01: y<=i[1];
            2'b10: y<=i[2];
            2'b11: y<=i[3];
        endcase
    end
endmodule
