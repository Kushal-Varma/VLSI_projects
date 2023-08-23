`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 23:53:44
// Design Name: 
// Module Name: gray_to_binary_conversion_tb
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


module gray_to_binary_conversion_tb;
    reg [3:0] g;
    wire [3:0] b;
    
    gray_to_binary_conversion d0(.g(g),.b(b));
    
    initial begin
        g=4'b0000;#100;
        g=4'b0001;#100;
        g=4'b0011;#100;
        g=4'b0010;#100;
        g=4'b0110;#100;
        g=4'b0111;#100;
        g=4'b0101;#100;
        g=4'b0100;#100;
        g=4'b1100;#100;
        g=4'b1101;#100;
        g=4'b1111;#100;
        g=4'b1110;#100;
        g=4'b1010;#100;
        g=4'b1011;#100;
        g=4'b1001;#100;
        g=4'b1000;#100;
    end
endmodule
