`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 16:34:52
// Design Name: 
// Module Name: demux_1x4
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


module demux_1x4(x,s0,s1,y0,y1,y2,y3);
    input x,s0,s1;
    output y0,y1,y2,y3;
    
    assign y0=x&(~s1)&(~s0);
    assign y1=x&(~s1)&(s0);
    assign y2=x&(s1)&(~s0);
    assign y3=x&(s1)&(s0);
endmodule
