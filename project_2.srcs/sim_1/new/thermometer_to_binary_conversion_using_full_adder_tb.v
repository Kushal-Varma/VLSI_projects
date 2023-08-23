`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 01:39:16
// Design Name: 
// Module Name: thermometer_to_binary_conversion_using_full_adder_tb
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


module thermometer_to_binary_conversion_using_full_adder_tb;
    reg [6:0] i;
    wire [2:0] b;
    
    thermometer_to_binary_conversion_using_full_adder d0(i,b);
    
    initial begin
        i=7'b0000000;#100;
        i=7'b0000001;#100;
        i=7'b0000011;#100;
        i=7'b0000111;#100;
        i=7'b0001111;#100;
        i=7'b0011111;#100;
        i=7'b0111111;#100;
        i=7'b1111111;#100;
    end
endmodule
