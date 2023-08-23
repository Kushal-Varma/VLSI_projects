`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 01:41:50
// Design Name: 
// Module Name: t_flip_flop
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


module t_flip_flop(t,clk,q);
    input t,clk;
    output reg q;
    
    initial begin
        q=0;
    end
    
    always@(negedge clk)
    begin
        if (~t)
            q=q;
        else
            q=~q;
    end
endmodule
