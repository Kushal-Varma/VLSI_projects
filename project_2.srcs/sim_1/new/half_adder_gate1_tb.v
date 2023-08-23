`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 13:26:57
// Design Name: 
// Module Name: half_adder_gate1_tb
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


module half_adder_gate1_tb;
    reg a_i,b_i;
    wire sum,carry;
    
    half_adder_gate1 dut(.a_i(a_i),.b_i(b_i),.sum(sum),.carry(carry));
    
    initial begin
        a_i=0;b_i=0;#100;
        a_i=0;b_i=1;#100;
        a_i=1;b_i=0;#100;
        a_i=1;b_i=1;#100;
    end
endmodule
