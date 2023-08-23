`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2023 12:25:54
// Design Name: 
// Module Name: counter_4bit_async
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


module counter_4bit_async(clk,count);
    input clk;
    output reg [3:0] count;
    
    initial
        count=4'b1111;
    always@(negedge clk)
        count[0]=~count[0];
    always@(negedge count[0])
        count[1]=~count[1];
    always@(negedge count[1])
            count[2]=~count[2];
    always@(negedge count[2])
                count[3]=~count[3];
endmodule
