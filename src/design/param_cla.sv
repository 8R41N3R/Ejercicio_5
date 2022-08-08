`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2022 16:42:26
// Design Name: 
// Module Name: param_cla
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

module full_adder_2(s0, s1, cin, cout, sum);

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


module param_cla #(parameter WIDTH2 = 1)(A, B, result, tam);

    input  logic [WIDTH2-1:0] A;                    // declaracion de entradas y salidas
    input  logic [WIDTH2-1:0] B;
    output logic [WIDTH2:0]   result;
    output logic [WIDTH2-1:0] tam;                  // esta es para guardar el calor mas alto dependiendo de
                                                    // el ancho de bits ingresado
    logic [WIDTH2:0]   carry;
    logic [WIDTH2-1:0] sum;                         // declaracion de las coneciones internas
    logic [WIDTH2-1:0] P;                           // propagate
    logic [WIDTH2-1:0] G;                           // generate
    
    genvar ii;                                      // variable para el for
    generate                                        // inicialización del for
        for (ii = 0; ii<WIDTH2; ii=ii+1)
            begin
                full_adder_2 param_cla(             // se usa el full adder 1bit dentro del for
                .s0         (A[ii]),                // asignacion de datos
                .s1         (B[ii]),
                .cin        (carry[ii]),
                .cout       (),
                .sum        (sum[ii])
                );
            end
    endgenerate
    
    genvar jj;
    generate                                        // este for es para asignar los datos a propagate,
        for (jj = 0; jj<WIDTH2; jj=jj+1)            // genrate y los carry internos
            begin
                assign G[jj]       = A[jj] & B[jj];
                assign P[jj]       = A[jj] | B[jj];
                assign carry[jj+1] = G[jj] | (P[jj] & carry[jj]);
            end
    endgenerate

    genvar kk;
    generate                                        // este for es para obtener el numero mas alto que se
        for (kk = 0; kk<WIDTH2; kk=kk+1)            // pueda obtener dependiendo del ancho de bits ingrasado
            begin
                assign tam[kk] = 1'b1;
            end
    endgenerate

    assign carry[0] = 1'b0;                         // asigancion del carry de entrada
    
    assign result = {carry[WIDTH2], sum};           // concatenación

endmodule
