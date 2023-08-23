`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 00:25:27
// Design Name: 
// Module Name: dff_clear
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


module dff_clear(d,clear,clk,q);
    input d,clear,clk;
    output reg q;
    
    always@(posedge clk)
    begin
        if(clear)
            q=0;
        else
            q=d;
    end
endmodule
