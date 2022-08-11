`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2022 15:38:12
// Design Name: 
// Module Name: module_sim_rca_8bits
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

module module_sim_rca_8bits;

    parameter WIDTH = 8;
    
    logic [WIDTH-1:0] a_pi;
    logic [WIDTH-1:0] b_pi;
    logic [WIDTH:0] result_po;
    
    
    
    module_rca_8bits #(.WIDTH(WIDTH))DUT(
    .a_pi          (a_pi),
    .b_pi          (b_pi),
    .result_po     (result_po)
    );
    
    
    initial begin   
        repeat (10) begin
            
            #100;
            a_pi = 8'hff;
            b_pi = 8'hff;
        end
    #10;
    
    $finish;
    
    end

endmodule
