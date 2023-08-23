`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 16:12:46
// Design Name: 
// Module Name: mux_4x1_tb
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


module mux_4x1_tb;
    reg i0,i1,i2,i3,s0,s1;
    wire y;
    
    mux_4x1 d0(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.y(y));
    
    initial begin
        {i0,i1,i2,i3}=4'b1000;{s0,s1}=2'b00;#100;
        {i0,i1,i2,i3}=4'b0010;{s0,s1}=2'b01;#100;
        {i0,i1,i2,i3}=4'b0100;{s0,s1}=2'b10;#100;
        {i0,i1,i2,i3}=4'b0001;{s0,s1}=2'b11;#100;
    end
endmodule
