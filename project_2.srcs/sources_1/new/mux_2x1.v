`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 20:30:40
// Design Name: 
// Module Name: mux_2x1
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


module mux_2x1(i0,i1,s,y);
    input i0,i1,s;
    output y;
    
    wire sbar,p,q;
    
    not n1(sbar,s);
    and a1(p,sbar,i0);
    and a2(q,s,i1);
    or o1(y,p,q);
    
endmodule
