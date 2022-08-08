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

    parameter WIDTH = 8;
    
    logic [WIDTH-1:0] A = 0;
    logic [WIDTH-1:0] B = 0;
    logic [WIDTH:0]   result;
    logic [WIDTH-1:0] tam;
    
    param_rca #(.WIDTH(WIDTH))DUT(
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
