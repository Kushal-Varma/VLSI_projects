`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 18:00:24
// Design Name: 
// Module Name: decoder_3_to_8_En_using_decoder_2_to_4_En
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


module decoder_3_to_8_En_using_decoder_2_to_4_En(en,d0,d1,d2,y0,y1,y2,y3,y4,y5,y6,y7);
    input en,d0,d1,d2;
    output y0,y1,y2,y3,y4,y5,y6,y7;
    
    wire p,q;
    
    decoder_2_to_4_En c0(en,d2,0,p,q);
    decoder_2_to_4_En c1(p,d0,d1,y0,y1,y2,y3);
    decoder_2_to_4_En c2(q,d0,d1,y4,y5,y6,y7);
    
endmodule
