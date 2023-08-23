`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 16:38:46
// Design Name: 
// Module Name: full_adder_4bit
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


module full_adder_4bit(a,b,cin,sum,cout);
    
    input [3:0] a,b;
    input cin;
    output [3:0] sum;
    output cout;
    
    wire c1,c2,c3;
    
    full_adder_using_half_adder_gate1 d0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(c1));
    full_adder_using_half_adder_gate1 d1(.a(a[1]),.b(b[1]),.cin(c1),.sum(sum[1]),.cout(c2));
    full_adder_using_half_adder_gate1 d2(.a(a[2]),.b(b[2]),.cin(c2),.sum(sum[2]),.cout(c3));
    full_adder_using_half_adder_gate1 d3(.a(a[3]),.b(b[3]),.cin(c3),.sum(sum[3]),.cout(cout));
    
    
endmodule
