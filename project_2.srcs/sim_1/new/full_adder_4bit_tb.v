`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 16:58:05
// Design Name: 
// Module Name: full_adder_4bit_tb
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


module full_adder_4bit_tb;
    reg [3:0] a,b;
    reg cin;
    wire [3:0] sum;
    wire cout;
    
    full_adder_4bit d0(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    
    initial begin
        a=5;b=10;cin=0;#100;
        a=4;b=10;cin=1;#100;
        a=5;b=10;cin=1;#100;
        a=15;b=2;cin=0;#100;
    end
    
endmodule
