`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2023 14:04:22
// Design Name: 
// Module Name: sr_flip_flop_latch
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


module sr_flip_flop_latch(s,r,clk,q,qbar);
    input s,r,clk;
    output reg q,qbar;
    
    wire j,k;
    
    always@(posedge clk)
    begin
        if ({s,r}==2'b01)   begin
            q=1'b0; qbar=1'b1;
        end else if ({s,r}==2'b10) begin
                q=1'b1; qbar=1'b0;
            end else if ({s,r}==2'b11) begin
                    q=1'b0; qbar=1'b0;
                end
    end
endmodule
