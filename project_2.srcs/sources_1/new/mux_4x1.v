`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 16:06:50
// Design Name: 
// Module Name: mux_4x1
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


module mux_4x1(i0,i1,i2,i3,s0,s1,y);
    input i0,i1,i2,i3,s0,s1;
    output y;
    
    wire p,q;
    
    mux_2x1 d0(.i0(i0),.i1(i1),.s(s0),.y(p));
    mux_2x1 d1(.i0(i2),.i1(i3),.s(s0),.y(q));
    mux_2x1 d2(.i0(p),.i1(q),.s(s1),.y(y));
    
endmodule
