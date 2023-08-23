`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 13:20:48
// Design Name: 
// Module Name: half_adder_gate1
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


module half_adder_gate1(a_i,b_i,sum,carry);
    input a_i,b_i;
    output sum,carry;
    
    //xor g1(sum,a,b);
    //and g2(carry,a,b);
    
    assign sum=a_i^b_i;
    assign carry=a_i&b_i;
    
endmodule
