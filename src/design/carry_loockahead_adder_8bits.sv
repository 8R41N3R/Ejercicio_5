`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 19:07:40
// Design Name: 
// Module Name: carry_loockahead_adder_8bits
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


module carry_loockahead_adder_8bits(s2, s1, cin, cout, sum);

    input  logic [7:0] s2;      // declaracion de entradas, s2 es a, siendo s2 el mas significativo y cin el menos
    input  logic [7:0] s1;      // s1 es b
    input  logic       cin;     // carry de entrada
    
    output logic [7:0] sum;     // declaracion de salidas, sum es suma de los dos digitos
    output logic       cout;    // carry de salida
    
    logic p0,                   // declaracion de 
          p1,                   // conecciones internas
          p2,                   // de propagate
          p3,
          p4,
          p5,
          p6,
          p7;
    logic g0,                   // declaracion de 
          g1,                   // conecciones internas
          g2,                   // de generate
          g3,
          g4,
          g5,
          g6,
          g7;
    logic c1,                   // declaracionde de
          c2,                   // conecciones internas
          c3,                   // para los carry
          c4,
          c5,
          c6,
          c7,
          c8;
          
          
    assign p0 = (s2[0] | s1[0]) & (~s2[0] | ~s1[0]);        // asignacion a propagate mediante
    assign p1 = (s2[1] | s1[1]) & (~s2[1] | ~s1[1]);        // la ecuacion s2[X] xor s1[x] 
    assign p2 = (s2[2] | s1[2]) & (~s2[2] | ~s1[2]);        // usando compuertas and, or y not
    assign p3 = (s2[3] | s1[3]) & (~s2[3] | ~s1[3]);
    assign p4 = (s2[4] | s1[4]) & (~s2[4] | ~s1[4]);
    assign p5 = (s2[5] | s1[5]) & (~s2[5] | ~s1[5]);
    assign p6 = (s2[6] | s1[6]) & (~s2[6] | ~s1[6]);
    assign p7 = (s2[7] | s1[7]) & (~s2[7] | ~s1[7]);
    
    assign g0 = s2[0] & s1[0];                              // asignacion a generate mediante
    assign g1 = s2[1] & s1[1];                              // la ecuacion s2[x] and s1[x]
    assign g2 = s2[2] & s1[2];
    assign g3 = s2[3] & s1[3];
    assign g4 = s2[4] & s1[4];
    assign g5 = s2[5] & s1[5];
    assign g6 = s2[6] & s1[6];
    assign g7 = s2[7] & s1[7];
    
    assign c1 = g0 | (p0 & cin);                            // asigancion a los carry mediante
    assign c2 = g1 | (p1 & g0) | (p1 & p0 & cin);           // una ecuacion usando compuertas and, not y or
    assign c3 = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & cin);
    assign c4 = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & cin);
    assign c5 = g4 | (p4 & g3) | (p4 & p3 & g2) | (p4 & p3 & p2 & g1) | (p4 & p3 & p2 & p1 & g0) | (p4 & p3 & p2 & p1 & p0 & cin);
    assign c6 = g5 | (p5 & g4) | (p5 & p4 & g3) | (p5 & p4 & p3 & g2) | (p5 & p4 & p3 & p2 & g1) | (p5 & p4 & p3 & p2 & p1 & g0) | (p5 & p4 & p3 & p2 & p1 & p0 & cin);
    assign c7 = g6 | (p6 & g5) | (p6 & p5 & g4) | (p6 & p5 & p4 & g3) | (p6 & p5 & p4 & p3 & g2) | (p6 & p5 & p4 & p3 & p2 & g1) | (p6 & p5 & p4 & p3 & p2 & p1 & g0) | (p6 & p5 & p4 & p3 & p2 & p1 & p0 & cin);
    assign c8 = g7 | (p7 & g6) | (p7 & p6 & g5) | (p7 & p6 & p5 & g4) | (p7 & p6 & p5 & p4 & g3) | (p7 & p6 & p5 & p4 & p3 & g2) | (p7 & p6 & p5 & p4 & p3 & p2 & g1) | (p7 & p6 & p5 & p4 & p3 & p2 & p1 & g0) | (p7 & p6 & p5 & p4 & p3 & p2 & p1 & p0 & cin);
 
    assign sum[0] = (p0 | cin) & (~p0 | ~cin);              // asignacion a suma mediante
    assign sum[1] = (p1 | c1 ) & (~p1 | ~c1 );              // mediante la ecuacion p[x] xor c[o] exepto
    assign sum[2] = (p2 | c2 ) & (~p2 | ~c2 );              // para el caso de sum[0] donde c0 es cin
    assign sum[3] = (p3 | c3 ) & (~p3 | ~c3 );
    assign sum[4] = (p4 | c4 ) & (~p4 | ~c4 );
    assign sum[5] = (p5 | c5 ) & (~p5 | ~c5 );
    assign sum[6] = (p6 | c6 ) & (~p6 | ~c6 );
    assign sum[7] = (p7 | c7 ) & (~p7 | ~c7 );
    
    assign cout = c8;                                       // asignacion de c8 a cout
    
    
    


endmodule
