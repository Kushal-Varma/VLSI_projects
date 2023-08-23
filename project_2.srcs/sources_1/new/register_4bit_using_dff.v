`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 19:25:51
// Design Name: 
// Module Name: register_4bit_using_dff
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


module register_4bit_using_dff(d,clk,load,q);
    input [3:0] d;
    input clk,load;
    output wire [3:0] q;
    wire [3:0] s;
    
    mux_2x1 m0(q[0],d[0],load,s[0]);
    mux_2x1 m1(q[1],d[1],load,s[1]);
    mux_2x1 m2(q[2],d[2],load,s[2]);
    mux_2x1 m3(q[3],d[3],load,s[3]);
    
    d_flip_flop d0(s[0],clk,q[0]);
    d_flip_flop d1(s[1],clk,q[1]);
    d_flip_flop d2(s[2],clk,q[2]);
    d_flip_flop d3(s[3],clk,q[3]);
endmodule
