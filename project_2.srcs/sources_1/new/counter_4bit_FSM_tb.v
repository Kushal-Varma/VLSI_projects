`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2023 19:46:00
// Design Name: 
// Module Name: counter_4bit_FSM_tb
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


module counter_4bit_FSM_tb();
    reg clk,reset,din;
    wire [1:0] z;
    
    counter_4bit_FSM c0(clk,reset,din,z);
    
    always#50 clk=~clk;
    always#22 din=~din;
    
    initial begin
        clk=0;
        reset=1;
        din=0;
        #232 reset=0;
    end
endmodule
