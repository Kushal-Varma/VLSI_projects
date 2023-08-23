`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2023 23:20:01
// Design Name: 
// Module Name: full_subtractor_tb
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


module full_subtractor_tb;
    reg a,b,cin;
    wire d,cout;
    
    full_subtractor s0(a,b,cin,d,cout);
    
    always#40 a=~a;
    always#20 b=~b;
    always#10 cin=~cin;
    
    initial begin
        a=0;
        b=0;
        cin=0;
        #160 $finish;
    end
endmodule
