`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2022 18:19:11
// Design Name: 
// Module Name: full_adder_1bit
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
