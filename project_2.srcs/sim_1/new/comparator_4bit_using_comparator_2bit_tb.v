`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 00:40:21
// Design Name: 
// Module Name: comparator_4bit_using_comparator_2bit_tb
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


module comparator_4bit_using_comparator_2bit_tb;
    reg [3:0] a,b;
    wire g,e,s;
    
    comparator_4bit_using_comparator_2bit d0(a,b,g,e,s);
    
    initial begin
        {a,b}=8'b00000000;#100;
        {a,b}=8'b00000001;#100;
        {a,b}=8'b00000010;#100;
        {a,b}=8'b00000011;#100;
        {a,b}=8'b00000100;#100;
        {a,b}=8'b00000101;#100;
        {a,b}=8'b00000110;#100;
        {a,b}=8'b00000111;#100;
        {a,b}=8'b00100000;#100;
        {a,b}=8'b00001001;#100;
        {a,b}=8'b00001010;#100;
        {a,b}=8'b00001011;#100;
        {a,b}=8'b00001100;#100;
        {a,b}=8'b00001101;#100;
        {a,b}=8'b00001110;#100;
        {a,b}=8'b00001111;#100;
        {a,b}=8'b01110000;#100;
        {a,b}=8'b01000110;#100;
        {a,b}=8'b10001000;#100;
        {a,b}=8'b10000001;#100;
        {a,b}=8'b10000111;#100;
        {a,b}=8'b10001001;#100;
        {a,b}=8'b01100000;#100;
        {a,b}=8'b01001010;#100;
        {a,b}=8'b00100111;#100;
        
        
        
        
        
    end

endmodule
