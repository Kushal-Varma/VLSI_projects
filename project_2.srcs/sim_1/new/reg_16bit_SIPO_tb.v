`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2023 00:47:18
// Design Name: 
// Module Name: reg_16bit_SIPO_tb
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


module reg_16bit_SIPO_tb();
    reg d,load,clk,clear;
    wire [15:0] q;
    
    reg_16bit_SIPO r0(d,load,clk,clear,q);
    
    always#50 clk=~clk;
    
    initial begin
        clk=0; load=1; d=1;
        #1600; $finish;
    end
endmodule
