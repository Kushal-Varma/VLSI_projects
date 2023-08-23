`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 16:06:17
// Design Name: 
// Module Name: full_adder_using_half_adder_gate1
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


module full_adder_using_half_adder_gate1(a,b,cin,sum,cout);
    input a,b,cin;
    output sum,cout;
    
    wire s1,c1,c2;
    
    half_adder_gate1 g1(.a_i(a),.b_i(b),.sum(s1),.carry(c1));
    half_adder_gate1 g2(.a_i(s1),.b_i(cin),.sum(sum),.carry(c2));
    assign cout=c2|c1;
    
endmodule
