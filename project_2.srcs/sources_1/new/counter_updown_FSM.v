`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2023 21:24:46
// Design Name: 
// Module Name: counter_updown_FSM
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


module counter_updown_FSM(clk,reset,dir,z);
    input wire clk,reset,dir;
    output reg z;
    
    always@(posedge clk)
    begin
        if(reset)
            z=2'b00;
    end
endmodule
