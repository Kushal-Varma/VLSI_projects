`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 18:41:14
// Design Name: 
// Module Name: decoder_3_to_8_En_using_decoder_2_to_4_En_tb
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


module decoder_3_to_8_En_using_decoder_2_to_4_En_tb;
    reg en,d0,d1,d2;
    wire y0,y1,y2,y3,y4,y5,y6,y7;
    
    decoder_3_to_8_En_using_decoder_2_to_4_En c0(en,d0,d1,d2,y0,y1,y2,y3,y4,y5,y6,y7);
    
    initial begin
        {en,d2,d1,d0}=4'b0000;#100;
        {en,d2,d1,d0}=4'b0001;#100;
        {en,d2,d1,d0}=4'b0010;#100;
        {en,d2,d1,d0}=4'b0011;#100;
        {en,d2,d1,d0}=4'b0100;#100;
        {en,d2,d1,d0}=4'b0101;#100;
        {en,d2,d1,d0}=4'b0110;#100;
        {en,d2,d1,d0}=4'b0111;#100;
        
        {en,d2,d1,d0}=4'b1000;#100;
        {en,d2,d1,d0}=4'b1001;#100;
        {en,d2,d1,d0}=4'b1010;#100;
        {en,d2,d1,d0}=4'b1011;#100;
        {en,d2,d1,d0}=4'b1100;#100;
        {en,d2,d1,d0}=4'b1101;#100;
        {en,d2,d1,d0}=4'b1110;#100;
        {en,d2,d1,d0}=4'b1111;#100;
    end
endmodule
