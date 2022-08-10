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


module param_cla #(parameter WIDTH2 = 8)(

    input  logic [WIDTH2-1:0] A_pi,                    // declaracion de entradas y salidas
    input  logic [WIDTH2-1:0] B_pi,
    output logic [WIDTH2-1:0] result_po);
    
    logic [WIDTH2:0]   carry;
    logic [WIDTH2-1:0] sum;                         // declaracion de las coneciones internas
    logic [WIDTH2-1:0] P;                           // propagate
    logic [WIDTH2-1:0] G;                           // generate
    
    genvar ii;                                      // variable para el for
    generate                                        // inicialización del for
        for (ii = 0; ii<WIDTH2; ii=ii+1)
            begin
                full_adder_1bit param(              // se usa el full adder 1bit dentro del for
                .s0         (A_pi[ii]),                // asignacion de datos
                .s1         (B_pi[ii]),
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
                assign G[jj]       = A_pi[jj] & B_pi[jj];
                assign P[jj]       = A_pi[jj] | B_pi[jj];
                assign carry[jj+1] = G[jj] | (P[jj] & carry[jj]);
            end
    endgenerate

    assign carry[0] = 1'b0;                         // asigancion del carry de entrada
    
    assign result_po = {carry[WIDTH2], sum};           // concatenación

endmodule
