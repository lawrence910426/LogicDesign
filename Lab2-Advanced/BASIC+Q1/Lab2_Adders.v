`timescale 1ns/1ps

module Full_Adder (a, b, cin, cout, sum);
    input a, b, cin;
    output cout, sum;
    wire w1;
    //s
    XOR Xor1(.out(w1), .a(a), .b(b));
    XOR Xor2(.out(sum), .a(w1), .b(cin));
    //cout
    Majority m (.out(cout), .a(a), .b(b), .c(cin));
endmodule

module Half_Adder(a, b, cout, sum);
    input a, b;
    output cout, sum;
    XOR Xor(.out(sum), .a(a), .b(b));
    AND And(.out(cout), .a(a), .b(b));
endmodule
