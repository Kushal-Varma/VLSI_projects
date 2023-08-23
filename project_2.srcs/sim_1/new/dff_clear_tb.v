`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 00:28:39
// Design Name: 
// Module Name: dff_clear_tb
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


module dff_clear_tb();
    reg d,clear,clk;
    wire q;
    
    dff_clear d0(d,clear,clk,q);
    
    always#50 clk=~clk;
    always#23 d=~d;
    always#69 clear=~clear;
    
    initial begin
        clk=0;
        d=1;
        clear=0;
    end
endmodule
