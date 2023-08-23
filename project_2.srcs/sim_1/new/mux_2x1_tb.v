`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 20:35:25
// Design Name: 
// Module Name: mux_2x1_tb
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


module mux_2x1_tb;
    reg I0,I1,S;
    wire Y;
    
    mux_2x1 d0(.i0(I0),.i1(I1),.s(S),.y(Y));
    
    initial begin
        I0=0;I1=0;S=0;#100;
        I0=0;I1=1;S=0;#100;
        I0=1;I1=0;S=0;#100;
        I0=1;I1=1;S=0;#100;
        I0=0;I1=0;S=1;#100;
        I0=0;I1=1;S=1;#100;
        I0=1;I1=0;S=1;#100;
        I0=1;I1=1;S=1;#100;
    end
endmodule
