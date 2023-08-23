`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 00:12:22
// Design Name: 
// Module Name: comparator_2bit_using_comparator_1bit
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


module comparator_2bit_using_comparator_1bit(a,b,g,e,s);
    input [1:0] a,b;
    output g,e,s;
    
    wire g1,g0,e1,e0,s1,s0;
    
    comparator_1bit d0(a[1],b[1],g1,e1,s1);
    comparator_1bit d1(a[0],b[0],g0,e0,s0);
    
    assign e=e1&e0;
    assign g=g1+(e1&g0);
    assign s=s1+(e1&s0);
endmodule
