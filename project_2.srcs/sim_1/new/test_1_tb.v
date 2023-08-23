`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2023 13:42:15
// Design Name: 
// Module Name: test_1_tb
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


module test_1_tb;
    //Input
    reg a,b,c;
    //Output
    wire y;
    
    test1 cut(.a(a),.b(b),.c(c),.y(y));
    
    initial begin
        a=0;b=0;c=0;#100;
        a=0;b=0;c=1;#100;
        a=0;b=1;c=0;#100;
        a=0;b=1;c=1;#100;
        a=1;b=0;c=0;#100;
        a=1;b=0;c=1;#100;
        a=1;b=1;c=0;#100;
        a=1;b=1;c=1;#100;
    end
endmodule
