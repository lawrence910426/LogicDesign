`timescale 1s/1ps

// AND ----------------------------------------------------------------
module AND (o, a, b);
    input a, b;
    output o;
    
    NAND_Implement g (.a(a), .b(b), .sel(3'b001), .out(o));
endmodule

module AND3 (output o, input a, input b, input c);
    wire temp;
    AND g1 (temp, a, b);
    AND g2 (o, temp, c);
endmodule

module AND4 (output o, input a, input b, input c, input d);
    wire temp1, temp2;
    AND g1 (temp1, a, b);
    AND g2 (temp2, c, d);
    AND g3 (o, temp1, temp2);
    
   always @*
        $display ("AND4: %b %b %b %b -> %b", 
            a, b, c, d, o);
endmodule

module AND5 (output o, input a, input b, input c, input d, input e);
    wire temp1, temp2;
    AND g1 (temp1, a, b);
    AND3 g2 (temp2, c, d, e);
    AND g3 (o, temp1, temp2);
endmodule

// OR ----------------------------------------------------------------
module OR (output o, input a, input b);
    NAND_Implement g (.a(a), .b(b), .sel(3'b010), .out(o));
endmodule

module OR3 (output o, input a, input b, input c);
    wire temp;
    OR g1 (temp, a, b);
    OR g2 (o, temp, c);
endmodule

module OR4 (output o, input a, input b, input c, input d);
    wire temp1, temp2;
    OR g1 (temp1, a, b);
    OR g2 (temp2, c, d);
    OR g3 (o, temp1, temp2);
endmodule

module OR5 (output o, input a, input b, input c, input d, input e);
    wire temp1, temp2;
    OR3 g1 (temp1, a, b, c);
    OR g2 (temp2, d, e);
    OR g3 (o, temp1, temp2);
endmodule

// XOR ----------------------------------------------------------------
module XOR (output o, input a, input b);
    NAND_Implement g (.a(a), .b(b), .sel(3'b100), .out(o));
endmodule

module WIRE(output o, input i);
    XOR g (o, i, 0);
endmodule