`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 01:50:33
// Design Name: 
// Module Name: jk_flip_flop
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


module jk_flip_flop(j,k,clk,q);
    input j,k,clk;
    output reg q;
    
    always@(posedge clk)
    begin
        case({j,k})
            2'b00: q=q;
            2'b01: q=0;
            2'b10: q=1;
            2'b11: q=~q;
        endcase
    end
endmodule
