`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 17:14:54
// Design Name: 
// Module Name: decoder_2_to_4_En_tb
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


module decoder_2_to_4_En_tb;
    reg en,d0,d1;
    wire y0,y1,y2,y3;
    
    decoder_2_to_4_En c0(.en(en),.d0(d0),.d1(d1),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
    
    initial begin
        {en,d1,d0}=3'b000;#100;
        {en,d1,d0}=3'b001;#100;
        {en,d1,d0}=3'b010;#100;
        {en,d1,d0}=3'b011;#100;
        {en,d1,d0}=3'b100;#100;
        {en,d1,d0}=3'b101;#100;
        {en,d1,d0}=3'b110;#100;
        {en,d1,d0}=3'b111;#100;
    end
endmodule
