`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 13:06:53
// Design Name: 
// Module Name: full_adder_using_if_statement_tb
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


module full_adder_using_if_statement_tb;
    reg a,b,cin;
    wire sum,cout;
    
    full_adder_using_if_statement d0(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
    
    initial begin
        {a,b,cin}=3'b000;#100;
        {a,b,cin}=3'b001;#100;
        {a,b,cin}=3'b010;#100;
        {a,b,cin}=3'b011;#100;
        {a,b,cin}=3'b100;#100;
        {a,b,cin}=3'b101;#100;
        {a,b,cin}=3'b110;#100;
        {a,b,cin}=3'b111;#100;
    end
endmodule
