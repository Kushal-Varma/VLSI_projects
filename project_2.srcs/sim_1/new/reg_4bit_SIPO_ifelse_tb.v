`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 02:11:06
// Design Name: 
// Module Name: reg_4bit_SIPO_ifelse_tb
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


module reg_4bit_SIPO_ifelse_tb();
    reg d,load,clk,clear;
    wire [3:0] q;
    
    reg_4bit_SIPO_ifelse r0(d,load,clk,clear,q);
    
    always#20 clk=~clk;
    
    initial begin
        clk=1; load=1;
        #10; d=1;
        #200; d=0;
        #250; load=0;
        #100; d=1;
        #50; $finish;
    end
endmodule
