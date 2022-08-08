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
    
    logic [WIDTH2-1:0] A = 0;
    logic [WIDTH2-1:0] B = 0;
    logic [WIDTH2:0]   result;
    logic [WIDTH2-1:0] tam;
    
    param_cla #(.WIDTH2(WIDTH2))DUT(
    .A          (A),
    .B          (B),
    .result     (result),
    .tam        (tam)
    );
    
    initial begin
        
        repeat (tam) begin
            
            #10;
            A = $random%tam;
            B = $random%tam;
            #1;
        end
    #10;
    
    $finish;
    
    end

endmodule
