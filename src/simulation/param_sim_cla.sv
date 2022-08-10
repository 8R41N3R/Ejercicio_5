`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2022 17:43:45
// Design Name: 
// Module Name: param_sim_cla
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


module param_sim_cla;

    parameter WIDTH2 = 8;
    
    logic [WIDTH2-1:0] A_pi = 0;
    logic [WIDTH2-1:0] B_pi = 0;
    logic [WIDTH2-1:0] result_po;
    logic [WIDTH2-1:0] tam;
    
    param_cla #(.WIDTH2(WIDTH2))DUT(
    .A_pi          (A_pi),
    .B_pi          (B_pi),
    .result_po     (result_po)
    );
    
    initial begin
        
        repeat (10) begin
            
            #100;
            A_pi = {$random} %8'hff;
            B_pi = {$random} %8'hff;
        end
    #10;
    
    $finish;
    
    end

endmodule
