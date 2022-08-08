`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2022 13:37:33
// Design Name: 
// Module Name: sim_full_adder
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


module sim_full_adder;

    logic s0 ;
    logic s1 ;
    logic cin;
    logic cout;
    logic sum;
    
    full_adder_1bit DUT(
    .s1     (s1),
    .s0     (s0),
    .cin    (cin),
    .cout   (cout),
    .sum    (sum)
    );
    
    initial begin
        s0 = 1'b1;
        s1 = 1'b0;
        cin = 1'b0;
        
        #10;
        
        s0 = 1'b0;
        s1 = 1'b1;
        cin = 1'b0;
        
        #10;
        
        s0 = 1'b0;
        s1 = 1'b0;
        cin = 1'b0;
        
        #10;
        
        s0 = 1'b1;
        s1 = 1'b1;
        cin = 1'b0;
        
        #10;
        $finish;
    end
    
    
endmodule
