`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 16:38:52
// Design Name: 
// Module Name: demux_1x4_tb
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


module demux_1x4_tb;
    reg x,s0,s1;
    wire y0,y1,y2,y3;
    
    demux_1x4 d0(.x(x),.s0(s0),.s1(s1),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
    
    initial begin
        x=1'b0;{s1,s0}=2'b00;#100;
        x=1'b1;{s1,s0}=2'b00;#100;
        x=1'b0;{s1,s0}=2'b01;#100;
        x=1'b1;{s1,s0}=2'b01;#100;
        x=1'b0;{s1,s0}=2'b10;#100;
        x=1'b1;{s1,s0}=2'b10;#100;
        x=1'b0;{s1,s0}=2'b11;#100;
        x=1'b1;{s1,s0}=2'b11;#100;
    end
endmodule
