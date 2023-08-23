`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 16:20:30
// Design Name: 
// Module Name: full_adder_using_half_adder_gate1_tb
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


module full_adder_using_half_adder_gate1_tb;
    
    reg a,b,cin;
    wire sum,cout;
    
    full_adder_using_half_adder_gate1 d0(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    
    initial begin
        a=0;b=0;cin=0;#100;
        a=0;b=1;cin=0;#100;
        a=1;b=0;cin=0;#100;
        a=1;b=1;cin=0;#100;
        a=0;b=0;cin=1;#100;
        a=0;b=1;cin=1;#100;
        a=1;b=0;cin=1;#100;
        a=1;b=1;cin=1;#100;
    end
    
endmodule
