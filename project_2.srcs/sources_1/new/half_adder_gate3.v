`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 14:17:45
// Design Name: 
// Module Name: half_adder_gate3
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


module half_adder_gate3(a,b,s,c);
    input a,b;
    output s,c;
    
    and g1(c,a,b);
    xor g2(s,a,b);
endmodule
