`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2022 15:11:53
// Design Name: 
// Module Name: module_cla_8bits
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


module module_cla_8bits #(parameter WIDTH2 = 8)(
    input  logic [WIDTH2-1:0] a_pi,                 // declaracion de entradas y salidas
    input  logic [WIDTH2-1:0] b_pi,
    output logic [WIDTH2-1:0] result_po);
    
    logic [WIDTH2:0]   carry;
    logic [WIDTH2-1:0] sum;                         // declaracion de las coneciones internas
    logic [WIDTH2-1:0] p;                           // propagate
    logic [WIDTH2-1:0] g;                           // generate
    
    genvar ii;                                      // variable para el for
    generate                                        // inicialización del for
        for (ii = 0; ii<WIDTH2; ii=ii+1)
            begin
                full_adder_1bit param(              // se usa el full adder 1bit dentro del for
                .s0         (a_pi[ii]),             // asignacion de datos
                .s1         (b_pi[ii]),
                .cin        (carry[ii]),
                .cout       (),
                .sum        (sum[ii])
                );
            end
    endgenerate
    
    assign carry[0] = 1'b0;                         // asigancion del carry de entrada
    
    genvar jj;
    generate                                        // este for es para asignar los datos a propagate,
        for (jj = 0; jj<WIDTH2; jj=jj+1)            // genrate y los carry internos
            begin
                assign g[jj]       = a_pi[jj] & b_pi[jj];
                assign p[jj]       = a_pi[jj] | b_pi[jj];
                assign carry[jj+1] = g[jj] | (p[jj] & carry[jj]);
            end
    endgenerate

    assign result_po = {carry[WIDTH2], sum};        // concatenación

endmodule
