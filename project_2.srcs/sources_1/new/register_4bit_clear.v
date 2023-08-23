`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 19:50:47
// Design Name: 
// Module Name: register_4bit_clear
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


module register_4bit_clear(d,clk,load,clear,q);
    input [3:0] d;
    input clk,load,clear;
    output reg [3:0] q;
    
    always@(posedge clk)
    begin
        if(clear)
            q<=4'b0000;
        else 
            begin
                if(load)
                    q=d;
                else
                    q=q;
            end
    end
endmodule
