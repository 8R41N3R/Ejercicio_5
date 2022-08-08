`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.08.2022 00:07:53
// Design Name: 
// Module Name: sim_carry_lookahead_adder_8bits
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


module sim_carry_lookahead_adder_8bits;

    logic       cin;
    logic [7:0] s1;
    logic [7:0] s2;
    
    logic [7:0] sum;
    logic       cout;
    
    carry_loockahead_adder_8bits DUT(
    .s2      (s2), 
    .s1      (s1),     
    .cin     (cin), 
    .cout    (cout), 
    .sum     (sum)
    );
    
    initial begin
    
        s2  = $random%255;
        s1  = $random%255;
        cin = $random%1;
        #10
        
        s2  = $random%255;
        s1  = $random%255;
        cin = $random%1;
        #10
        
        s2  = $random%255;
        s1  = $random%255;
        cin = $random%1;
        #10
        
        s2  = $random%255;
        s1  = $random%255;
        cin = $random%1;
        #10
        
        s2  = $random%255;
        s1  = $random%255;
        cin = $random%1;
        #10
        
        s2  = $random%255;
        s1  = $random%255;
        cin = $random%1;
        #10
        
        s2  = $random%255;
        s1  = $random%255;
        cin = $random%1;
        #10
        
        s2  = $random%255;
        s1  = $random%255;
        cin = $random%1;
        #10
        
        s2  = $random%255;
        s1  = $random%255;
        cin = $random%1;
        #10
        
        s2  = $random%255;
        s1  = $random%255;
        cin = $random%1;
        #10
        
        s2  = $random%255;
        s1  = $random%255;
        cin = $random%1;
        #10
        
        s2  = $random%255;
        s1  = $random%255;
        cin = $random%1;
        #10
        
        $finish;
    
    end

endmodule
