`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 12:58:33
// Design Name: 
// Module Name: full_adder_using_if_statement
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


module full_adder_using_if_statement(a,b,cin,sum,cout);
    input a,b,cin;
    output reg sum,cout;
    
    always@(a or b or cin)
    begin
        if (a==0 & b==0 & cin==0) begin
            sum=0; cout=0;
        end else if (a==0 & b==1 & cin==0) begin
            sum=1; cout=0;
        end else if (a==1 & b==0 & cin==0) begin
            sum=1; cout=0;
        end else if (a==1 & b==1 & cin==0) begin
            sum=0; cout=1;
        end else if (a==0 & b==0 & cin==1) begin
            sum=1; cout=0;
        end else if (a==0 & b==1 & cin==1) begin
            sum=0; cout=1;
        end else if (a==1 & b==0 & cin==1) begin
            sum=0; cout=1;
        end else begin
            sum=1; cout=1;
        end
    end
endmodule
