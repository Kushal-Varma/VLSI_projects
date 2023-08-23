`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 19:58:40
// Design Name: 
// Module Name: register_4bit_clear_tb
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


module register_4bit_clear_tb();
    reg [3:0] d;
    wire [3:0] q;
    reg clk,clear,load;
    
    register_4bit_clear d0(d,clk,load,clear,q);
    
    always#20 clk=~clk;
    initial begin
        clk=1;
        #10; clear=1;
        #100; load=1; d=4'b0010;
        #50; clear=0;
        #100; load=0; d=4'b0110;
        #100; load=1; d=4'b0100;
        #50; $finish;
    end
endmodule
