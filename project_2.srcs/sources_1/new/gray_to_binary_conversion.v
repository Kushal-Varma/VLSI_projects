`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 23:49:17
// Design Name: 
// Module Name: gray_to_binary_conversion
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


module gray_to_binary_conversion(g,b);
    input [3:0] g;
    output [3:0] b;
    
    assign b[3]=g[3];
    assign b[2]=g[3]^g[2];
    assign b[1]=g[3]^g[2]^g[1];
    assign b[0]=g[3]^g[2]^g[1]^g[0];
endmodule
