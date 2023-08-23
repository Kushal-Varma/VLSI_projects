`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2023 12:48:48
// Design Name: 
// Module Name: counter_4bit_up_down
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


module counter_4bit_up_down(clk,reset,direc,count);
    input clk,reset,direc;
    output reg [3:0] count=0;
    
    always@(posedge(clk) or posedge(reset))
    begin
        if (reset)
            count<=0;
        else
            if (direc==0)
                if (count==15)
                    count<=0;
                else
                    count<=count+1;
            else
                if (count==0)
                    count<=15;
                else
                    count<=count-1;
    end
endmodule
