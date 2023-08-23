`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2023 02:04:44
// Design Name: 
// Module Name: reg_4bit_SIPO_ifelse
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


module reg_4bit_SIPO_ifelse(d,load,clk,clear,q);
    input d,load,clk,clear;
    output reg [3:0] q;
    
    always@(posedge clk)
    begin
        if (clear==1)
            q=4'b0000;
        else
            if (load)
                q={q[2:0],d};
            else
                q=q;
    end
endmodule
