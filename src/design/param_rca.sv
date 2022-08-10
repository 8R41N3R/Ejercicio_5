`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2022 15:29:31
// Design Name: 
// Module Name: param_rca
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


module full_adder(s0, s1, cin, cout, sum);

    input logic s0;                                 // entradas para el full adder 1bit
    input logic s1;
    input logic cin;
    
    output logic cout;                              // salidas del full adder 1bit
    output logic sum;
    
    assign cout = (s0 & cin) |                      // asigancion al carry de salida mediante la ecuacion 
                  (s0 & s1 ) |                      // generada por el mapa de karnaugh
                  (s1 & cin); 
                   
    assign sum =  (~s0 & ~s1 &  cin) |              // asignacion a suma mediante la ecuacion
                  ( s0 & ~s1 & ~cin) |              // generada en el mapa de karnaugh
                  ( s0 &  s1 &  cin) |
                  (~s0 &  s1 & ~cin);

endmodule

module param_rca #(parameter WIDTH = 1)(
    input  logic [WIDTH-1:0] A_pi,                     // declaracion de entradas y salidas
    input  logic [WIDTH-1:0] B_pi,
    output logic [WIDTH-1:0] result_po,
    input  logic             clk_pi);
    
    logic [WIDTH:0]   carry;                        // declaracion de coneciones internas
    logic [WIDTH-1:0] sum;
    
    assign carry[0] = 1'b0;                         // asigancion al carry de entrada
    
    genvar ii;                                      // variable para el for
    generate
        for (ii = 0; ii<WIDTH; ii=ii+1)             // inicializacion del for
            begin
                full_adder param(                   // se usa el full adder 1bit para la asigancion de datos
                .s0         (A_pi[ii]),
                .s1         (B_pi[ii]),
                .cin        (carry[ii]),
                .cout       (carry[ii+1]),
                .sum        (sum[ii])
                );
            end
    endgenerate


    assign result_po = {carry[WIDTH], sum};            // concatenacion
endmodule
