`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 14:51:51
// Design Name: 
// Module Name: sr_flip_flop_edge_triggered
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


module sr_flip_flop_edge_triggered(s,r,clk,q,qbar);
    input s,r,clk;
    output q,qbar;
    
    wire nand1,nand2,nand3,nand4,nand5,nand6;
    
    nand n1(nand1,s,clk);
    nand n2(nand2,r,clk);
    nand n3(nand3,nand1,nand4);
    nand n4(nand4,nand2,nand3);
    not no1(clk_bar,clk);
    
    nand n5(nand5,nand3,clk_bar);
    nand n6(nand6,nand4,clk_bar);
    nand n7(q,nand5,qbar);
    nand n8(qbar,nand6,q);
endmodule
