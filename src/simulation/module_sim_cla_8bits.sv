`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2022 16:38:13
// Design Name: 
// Module Name: module_sim_cla_8bits
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


module module_sim_cla_8bits;

parameter WIDTH2 = 8;
    
    logic [WIDTH2-1:0] a_pi;
    logic [WIDTH2-1:0] b_pi;
    logic [WIDTH2-1:0] result_po;
    
    
    
    module_cla_8bits #(.WIDTH2(WIDTH2))DUT(
    .a_pi          (a_pi),
    .b_pi          (b_pi),
    .result_po     (result_po)
    );
    
    
    initial begin   
        repeat (20) begin
            
            #10;
            a_pi = $random %8'hff;
            b_pi = $random %8'hff;
        end
    #10;
    
    $finish;
    
    end
endmodule
