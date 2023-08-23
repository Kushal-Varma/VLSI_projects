`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2023 00:41:23
// Design Name: 
// Module Name: reg_16bit_SIPO
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


module reg_16bit_SIPO(d,load,clk,clear,q);
    input d,load,clk,clear;
    output [15:0] q;
    
    reg_4bit_SIPO_ifelse r0(d,load,clk,clear,q[3:0]);
    reg_4bit_SIPO_ifelse r1(q[3],load,clk,clear,q[7:4]);
    reg_4bit_SIPO_ifelse r2(q[7],load,clk,clear,q[11:8]);
    reg_4bit_SIPO_ifelse r3(q[11],load,clk,clear,q[15:12]);
endmodule
