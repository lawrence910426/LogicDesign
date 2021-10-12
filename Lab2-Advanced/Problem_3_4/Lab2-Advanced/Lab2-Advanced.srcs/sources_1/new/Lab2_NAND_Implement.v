`timescale 1s/1ps

module NAND_Implement (a, b, sel, out);
    input a, b;
    input [2:0] sel;
    output out;
    
    wire    n_nand, _nand, _nand_opt, _nand_result,
            n_and, _and, _and_opt, _and_result,
            n_or, _or, _or_opt, _or_result,
            n_nor, _nor, _nor_opt, _nor_result,
            n_xor, _xor, _xor_opt, _xor_result,
            n_xnor, _xnor, _xnor_opt, _xnor_result,
            n_not, _not, _not_opt, _not_result,
            n0, n1, n2, y0, y1, y2,
            na, nb;
    
    // --------------------------------------
    nand (na, a, a);
    nand (nb, b, b);
    
    nand (n0, sel[2], sel[2]);
    nand (n1, sel[1], sel[1]);
    nand (n2, sel[0], sel[0]);
    
    nand (y0, n0, n0);
    nand (y1, n1, n1);
    nand (y2, n2, n2);
    
    // --------------------------------------
    nand (n_nand, n0, n1, n2);
    nand (_nand, n_nand, n_nand);
        
    nand (n_and, n0, n1, y2);
    nand (_and, n_and, n_and);
    
    nand (n_or, n0, y1, n2);
    nand (_or, n_or, n_or);
    
    nand (n_nor, n0, y1, y2);
    nand (_nor, n_nor, n_nor);
    
    nand (n_xor, y0, n1, n2);
    nand (_xor, n_xor, n_xor);
    
    nand (n_xnor, y0, n1, y2);
    nand (_xnor, n_xnor, n_xnor);
    
    nand (n_not, y0, y1);
    nand (_not, n_not, n_not);
    
    // --------------------------------------
    nand (_nand_result, a, b);
    nand (_nand_opt, _nand_result, _nand);
    
    nand (_and_result, _nand_result, _nand_result);
    nand (_and_opt, _and_result, _and);
    
    nand (_or_result, na, nb);
    nand (_or_opt, _or_result, _or);
    
    nand (_nor_result, _or_result, _or_result);
    nand (_nor_opt, _nor_result, _nor);
    
    nand (_xnor_result, _or_result, _nand_result);
    nand (_xnor_opt, _xnor_result, _xnor);
    
    nand (_xor_result, _xnor_result, _xnor_result);
    nand (_xor_opt, _xor_result, _xor);
    
    nand (_not_result, a, a);
    nand (_not_opt, _not_result, _not);

    // --------------------------------------
    nand (out, 
            _nand_opt, 
            _and_opt,
            _or_opt,
            _nor_opt,
            _xor_opt,
            _xnor_opt,
            _not_opt);
    
    /*    
    always @*
        $display ("NAND_Implement: %b %b -> %b", 
            a, b, out);
    */
endmodule