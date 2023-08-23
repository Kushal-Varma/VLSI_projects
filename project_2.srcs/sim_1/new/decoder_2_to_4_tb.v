`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 16:55:40
// Design Name: 
// Module Name: decoder_2_to_4_tb
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


module decoder_2_to_4_tb;
    reg d0,d1;
    wire y0,y1,y2,y3;
    
    decoder_2_to_4 c0(.d0(d0),.d1(d1),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
    
    initial begin
        {d1,d0}=2'b00;#100;
        {d1,d0}=2'b01;#100;
        {d1,d0}=2'b10;#100;
        {d1,d0}=2'b11;#100;
    end
endmodule
