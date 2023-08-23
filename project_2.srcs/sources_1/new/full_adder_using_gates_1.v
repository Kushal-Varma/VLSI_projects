`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 13:21:04
// Design Name: 
// Module Name: full_adder_using_gates_1
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


module full_adder_using_gates_1(a,b,cin,sum,cout);
    input a,b,cin;
    output sum,cout;
    
    wire s1,s2,s3;
    
    xor x1(s1,a,b);
    and a1(s2,a,b);
    xor x2(sum,s1,cin);
    and a2(s3,s1,cin);
    or o1(cout,s2,s3);
endmodule
