module priority_encoder(y,s);
    input [7:0]s;
    output [2:0]y;
    reg [2:0]y;
    always@(s)
    begin
        if(s[7]==1)
        begin
            y=3'b111;
        end
        else if(s[6]==1)
        begin
            y=3'b110;
        end
        else if(s[5]==1)
        begin
            y=3'b101;
        end
        else if(s[4]==1)
        begin
            y=3'b100;
        end
        else if(s[3]==1)
        begin
            y=3'b010;
        end
        else if(s[2]==1)
        begin
            y=3'b001;
        end
        else if(s[1]==1)
        begin
            y=3'b011;
        end
        else
        begin
            y=3'b000;
        end
    end
endmodule
