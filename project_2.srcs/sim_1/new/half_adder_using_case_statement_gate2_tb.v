`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 20:51:36
// Design Name: 
// Module Name: half_adder_using_case_statement_gate2_tb
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


module half_adder_using_case_statement_gate2_tb;
    reg a,b;
    wire s,cout;
    
    half_adder_using_case_statement_gate2 d0(.a(a),.b(b),.s(s),.cout(cout));
    
    initial begin
        a=0;b=0;#100;
        a=0;b=1;#100;
        a=1;b=0;#100;
        a=1;b=1;#100;
    end
endmodule
