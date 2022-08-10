`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2022 15:31:29
// Design Name: 
// Module Name: param_sim_rca
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


module param_sim_rca;

    parameter WIDTH = 64;
    
    logic [WIDTH-1:0] A_pi = 0;
    logic [WIDTH-1:0] B_pi = 0;
    logic [WIDTH-1:0] result_po;
    logic             clk_pi;
    
    param_rca #(.WIDTH(WIDTH))DUT(
    .A_Pi          (A_pi),
    .B_pi          (B_pi),
    .result_po     (result_po),
    .clk_pi        (clk_pi)
    );
    
    initial begin
        
        
        repeat (10) begin
            
            #100;
            A_pi = {$random} %64'hffffffffffffffff;
            B_pi = {$random} %64'hffffffffffffffff;
        end
    #10;
    
    $finish;
    
    end

endmodule
