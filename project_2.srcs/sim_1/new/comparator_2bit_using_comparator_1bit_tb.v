`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 00:25:53
// Design Name: 
// Module Name: comparator_2bit_using_comparator_1bit_tb
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


module comparator_2bit_using_comparator_1bit_tb;
    reg [1:0] a,b;
    wire g,e,s;
    
    comparator_2bit_using_comparator_1bit d0(a,b,g,e,s);
    
    initial begin
        {a,b}=4'b0000;#100;
        {a,b}=4'b0001;#100;
        {a,b}=4'b0010;#100;
        {a,b}=4'b0011;#100;
        {a,b}=4'b0100;#100;
        {a,b}=4'b0101;#100;
        {a,b}=4'b0110;#100;
        {a,b}=4'b0111;#100;
        {a,b}=4'b1000;#100;
        {a,b}=4'b1001;#100;
        {a,b}=4'b1010;#100;
        {a,b}=4'b1011;#100;
        {a,b}=4'b1100;#100;
        {a,b}=4'b1101;#100;
        {a,b}=4'b1110;#100;
        {a,b}=4'b1111;#100;
    end
endmodule
