`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2023 12:55:42
// Design Name: 
// Module Name: counter_4bit_FSM
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


module counter_4bit_FSM(clk,reset,din,z);
    input wire clk,reset,din;
    output reg [1:0] z;
    reg [1:0] state;
    parameter s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;
    
    always@(posedge clk)
    begin
        if (reset)
            state<=s0;
        else 
            state<=state;
    end
    
    always@(posedge clk)
    begin
        case (state)
            s0: begin
                    if (din)
                        state<=s1;
                    else 
                        state<=state;
                end
            s1: begin
                    if (din)
                        state<=s2;
                    else
                        state<=state;
                end
            s2: begin
                    if (din)
                        state<=s3;
                    else
                        state<=state;
                end
            s3: begin 
                    if (din)
                        state<=s0;
                    else
                        state<=state;
                end
        endcase
    end
    //end
    
    always@(posedge clk)
        assign z=state;
endmodule
