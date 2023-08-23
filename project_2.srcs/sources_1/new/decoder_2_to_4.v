`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 16:49:23
// Design Name: 
// Module Name: decoder_2_to_4
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


module decoder_2_to_4(d0,d1,y0,y1,y2,y3);
    input d0,d1;
    output y0,y1,y2,y3;
    
    assign y0=(~d1)&(~d0);
    assign y1=(~d1)&(d0);
    assign y2=(d1)&(~d0);
    assign y3=(d1)&(d0);
    
endmodule
