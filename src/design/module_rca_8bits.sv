`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 15:33:29
// Design Name: 
// Module Name: module_rca_8bits
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


module module_rca_8bits #(parameter WIDTH = 8)(
    input  logic [WIDTH-1:0] a_pi,                  // declaracion de entradas y salidas
    input  logic [WIDTH-1:0] b_pi,
    output logic [WIDTH:0] result_po);
    
    logic [WIDTH:0]   carry;                        // declaracion de coneciones internas
    logic [WIDTH:0]   sum;
   
    assign carry[0] = 1'b0;                         // asigancion al carry de entrada                        
    
    genvar ii;                                      // variable para el for
    generate
        for (ii = 0; ii<WIDTH; ii=ii+1)             // inicializacion del for
            begin
                full_adder_1bit param(              // se usa el full adder 1bit para la asigancion de datos
                .s0         (a_pi[ii]),
                .s1         (b_pi[ii]),
                .cin        (carry[ii]),
                .cout       (carry[ii+1]),
                .sum        (sum[ii])
                );
            end
    endgenerate
    
    assign result_po = {carry[WIDTH], sum};            // concatenacion
endmodule
