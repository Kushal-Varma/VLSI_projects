`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 01:02:13
// Design Name: 
// Module Name: reg_4bit_PIPO_bidirec_tb
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


module reg_4bit_PIPO_bidirec_tb();
    reg [3:0] d;
    reg xl,xr,clear,clk;
    reg [1:0] ctrl;
    wire [3:0] q;
    
    reg_4bit_PIPO_bidirec r0(d,xl,xr,ctrl,clear,clk,q);
    
    always#20 clk=~clk;
    
    initial begin
        clk=1;clear=0;
        xl=1;xr=0;d=4'b0011;
        #10 ctrl=2'b11;
        #100 ctrl=2'b10;
        #100 ctrl=2'b01;
        #100 ctrl=2'b00;
        #80 $finish;
    end
endmodule
