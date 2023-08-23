`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2023 13:20:26
// Design Name: 
// Module Name: counter_4bit_johnson
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


module counter_4bit_johnson(clk,reset,count);
    input clk,reset;
    output reg [3:0] count;
    
    always@(posedge clk or reset)
    begin
        if (reset)
            count=0;
        else
            count={~count[0],count[3:1]};
    end
endmodule
