`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2023 19:20:51
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop(d,clk,q);
    input d,clk;
    output reg q;
    
    //reg qbar;
    
    
    always@(posedge clk)
    begin
        q=d;
    end
    /*
    wire j,k,dbar;
    
    nand n1(j,d,clk);
    not n2(dbar,d);
    nand n3(k,dbar,clk);
    nand n4(q,j,qbar);
    nand n5(qbar,k,q); */
endmodule
