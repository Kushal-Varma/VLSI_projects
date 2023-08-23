`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2023 00:57:18
// Design Name: 
// Module Name: multiply_by_2
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


module multiply_by_2(d,p);
    input [2:0] d;
    output reg [3:0] p;
    
    always @(d)
    begin
        case ({d})
            3'b000: begin p=4'b0000; end
            3'b001: begin p=4'b0010; end
            3'b010: begin p=4'b0100; end
            3'b011: begin p=4'b0110; end
            3'b100: begin p=4'b1000; end
            3'b101: begin p=4'b1010; end
            3'b110: begin p=4'b1100; end
            3'b111: begin p=4'b1110; end
        endcase
    end
endmodule
