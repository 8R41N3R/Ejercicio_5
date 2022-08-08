`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 13:10:55
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder_1bit(s1, s0, cin, cout, sum);     // creacion de modulo para 1bit full adder
    input logic    s1,                              // declaracion de las entradas
                   s0,                              // s1 es a y s0 es b donde el menos significativo es so y el mas es cin
                   cin;                             // carry de entrada
                   
    output logic   cout,                            // declaracion de las salidas, cout es carry de salida
                   sum;                             // suma de los bits
    
    assign cout = (s0 & cin) |                      // asigancion al carry de salida mediante la ecuacion 
                  (s0 & s1 ) |                      // generada por el mapa de karnaugh
                  (s1 & cin); 
                   
    assign sum =  (~s0 & ~s1 &  cin) |              // asignacion a suma mediante la ecuacion
                  ( s0 & ~s1 & ~cin) |              // generada en el mapa de karnaugh
                  ( s0 &  s1 &  cin) |
                  (~s0 &  s1 & ~cin);
endmodule

module full_adder_8bits(s1, s0, cin, cout, sum);    // creacion del modulo 8bits full adder

    input  logic       cin;                         // carry de entrada
    input  logic [7:0] s1;                          // entrada de 8 bits para s1 
    input  logic [7:0] s0;                          // entrada de 8 bits para s0
    
    output logic [7:0] sum;                         // salida de 8 bits para sum
    output logic       cout;                        // salida de 1 bit para carry de salida
    
    logic        [6:0] carry;                       // declaracion de carry para conecciones internas
    
    full_adder_1bit a1(s1[0], s0[0], cin, carry[0], sum[0]);        // full adder 1 bit 
    
    full_adder_1bit a2(s1[1], s0[1], carry[0], carry[1], sum[1]);
    
    full_adder_1bit a3(s1[2], s0[2], carry[1], carry[2], sum[2]);
    
    full_adder_1bit a4(s1[3], s0[3], carry[2], carry[3], sum[3]);
    
    full_adder_1bit a5(s1[4], s0[4], carry[3], carry[4], sum[4]);
    
    full_adder_1bit a6(s1[5], s0[5], carry[4], carry[5], sum[5]);
    
    full_adder_1bit a7(s1[6], s0[6], carry[5], carry[6], sum[6]);
    
    full_adder_1bit a8(s1[7], s0[7], carry[6], cout, sum[7]);
    
endmodule
