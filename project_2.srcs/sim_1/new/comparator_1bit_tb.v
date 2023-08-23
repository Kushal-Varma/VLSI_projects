`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 00:07:17
// Design Name: 
// Module Name: comparator_1bit_tb
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


module comparator_1bit_tb;
    reg a,b;
    wire g,e,s;
    
    comparator_1bit d0(a,b,g,e,s);
    
    initial begin
        {a,b}=2'b00;#100;
        {a,b}=2'b01;#100;
        {a,b}=2'b10;#100;
        {a,b}=2'b11;#100;
    end
endmodule
