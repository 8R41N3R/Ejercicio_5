`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 14:59:51
// Design Name: 
// Module Name: sim_full_adder_8bits
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


module sim_full_adder_8bits;

    logic       cin;
    logic [7:0] s1;
    logic [7:0] s0;
    
    logic [7:0] sum;
    logic       cout;
    
    full_adder_8bits DUT(
    .s1       (s1), 
    .s0       (s0), 
    .cin      (cin), 
    .cout     (cout), 
    .sum      (sum)
    );
    
    initial begin
    
    s0  = $random%255;
    s1  = $random%255;
    cin = $random%1;
    #10
    
    s0  = $random%255;
    s1  = $random%255;
    cin = $random%1;
    #10
    
    s0  = $random%255;
    s1  = $random%255;
    cin = $random%1;
    #10
    
    s0  = $random%255;
    s1  = $random%255;
    cin = $random%1;
    #10
    
    s0  = $random%255;
    s1  = $random%255;
    cin = $random%1;
    #10
    
    s0  = $random%255;
    s1  = $random%255;
    cin = $random%1;
    #10
    
    s0  = $random%255;
    s1  = $random%255;
    cin = $random%1;
    #10
    
    s0  = $random%255;
    s1  = $random%255;
    cin = $random%1;
    #10
    
    s0  = $random%255;
    s1  = $random%255;
    cin = $random%1;
    #10
    
    $finish;
    end


endmodule
