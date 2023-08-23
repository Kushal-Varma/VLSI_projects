`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 00:40:36
// Design Name: 
// Module Name: reg_4bit_PIPO_bidirec
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


module reg_4bit_PIPO_bidirec(d,xl,xr,ctrl,clear,clk,q);
    input [3:0] d;
    input xl,xr,clear,clk;
    input [1:0] ctrl;
    output [3:0] q;
    
    wire [3:0] D;
    
    mux_4x1 m0(q[0],xl,q[1],d[0],ctrl[0],ctrl[1],D[0]);
    mux_4x1 m1(q[1],q[0],q[2],d[1],ctrl[0],ctrl[1],D[1]);
    mux_4x1 m2(q[2],q[1],q[3],d[2],ctrl[0],ctrl[1],D[2]);
    mux_4x1 m3(q[3],q[2],xr,d[3],ctrl[0],ctrl[1],D[3]);
    
    dff_clear d0(D[0],clear,clk,q[0]);
    dff_clear d1(D[1],clear,clk,q[1]);
    dff_clear d2(D[2],clear,clk,q[2]);
    dff_clear d3(D[3],clear,clk,q[3]);
endmodule
