`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2023 01:30:16
// Design Name: 
// Module Name: thermometer_to_binary_conversion_using_full_adder
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


module thermometer_to_binary_conversion_using_full_adder(i,b);
    input [6:0] i;
    output [2:0] b;
    
    wire sum0,sum1,cout0,cout1,cout2;
    
    full_adder_using_gates_1 d1(.a(i[5]),.b(i[4]),.cin(i[3]),.sum(sum0),.cout(cout0));
    full_adder_using_gates_1 d2(.a(i[2]),.b(i[1]),.cin(i[0]),.sum(sum1),.cout(cout1));
    full_adder_using_gates_1 d3(.a(i[6]),.b(sum0),.cin(sum1),.sum(b[0]),.cout(cout2));
    full_adder_using_gates_1 d4(.a(cout0),.b(cout2),.cin(cout1),.sum(b[1]),.cout(b[2]));
endmodule
