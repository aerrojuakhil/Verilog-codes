module foubit_adder_subtractor(s,c,a,b,cin);
    input [3:0]a,b,cin;
    output [3:0]s;
    output c;
    wire w1,w2,w3;
    fulladder u1(s[0],w1,a[0],b[0],cin);
    fulladder u2(s[1],w2,a[1],b[1],w1);
    fulladder u3(s[2],w3,a[2],b[2],w2);
    fulladder u4(s[3],c,a[3],b[3],w3);
endmodule