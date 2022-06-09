module fullsubtractor(a,b,c,borrow,difference);
    input a,b,c;
    output borrow,difference;
    assign difference = a^b^c;
    assign borrow = ((~a)&b)|(b&c)|(c&(~a));
endmodule