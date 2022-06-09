module fourbit_subtractor(a,b,bin,bout,difference);
    input [3:0]a,b;
    input bin;
    output [3:0]difference;
    output bout;
    assign {bout,difference}=a-b-bin;
endmodule
