`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2023 23:14:49
// Design Name: 
// Module Name: full_subtractor
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


module full_subtractor(a,b,cin,d,cout);
    input a,b,cin;
    output d,cout;
    
    wire j,k,l,jbar,abar;
    
    xor x1(j,a,b);
    xor x2(d,cin,j);
    not n1(abar,a);
    not n2(jbar,j);
    and a1(k,b,abar);
    and a2(l,cin,jbar);
    or o1(cout,k,l);
    
endmodule
