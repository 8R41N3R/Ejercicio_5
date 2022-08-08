`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2022 14:52:18
// Design Name: 
// Module Name: param_full_adder
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

module param_full_adder #(parameter WIDTH = 1)(A, B, result, tam);
    
    
    input  logic [WIDTH-1:0] A;                     // declaracion de entradas y salidas
    input  logic [WIDTH-1:0] B;
    output logic [WIDTH:0]   result;
    output logic [WIDTH-1:0] tam;                   // esta es para guardar el calor mas alto dependiendo de
                                                    // el ancho de bits ingresado
    
    logic [WIDTH:0]   carry;                        // declaracion de coneciones internas
    logic [WIDTH-1:0] sum;
    
    assign carry[0] = 1'b0;                         // asigancion al carry de entrada
    
    genvar ii;                                      // variable para el for
    generate
        for (ii = 0; ii<WIDTH; ii=ii+1)             // inicializacion del for
            begin
                full_adder param(                   // se usa el full adder 1bit para la asigancion de datos
                .s0         (A[ii]),
                .s1         (B[ii]),
                .cin        (carry[ii]),
                .cout       (carry[ii+1]),
                .sum        (sum[ii])
                );
            end
    endgenerate

    genvar jj;
    generate
        for (jj = 0; jj<WIDTH; jj=jj+1)             // este for es para obtener el numero mas alto que se
            begin                                   // pueda obtener dependiendo del ancho de bits ingresado
                assign tam[jj] = 1'b1;
            end
    endgenerate

    assign result = {carry[WIDTH], sum};            // concatenacion
endmodule


