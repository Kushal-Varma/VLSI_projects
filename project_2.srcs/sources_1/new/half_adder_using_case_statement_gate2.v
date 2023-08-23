`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2023 20:44:10
// Design Name: 
// Module Name: half_adder_using_case_statement_gate2
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


module half_adder_using_case_statement_gate2(a,b,s,cout);
    input wire a,b;
    output reg s,cout;
    
    always@(a or b)
    begin
        case ({a,b})
            2'b00:begin s=0; cout=0; end
            2'b01:begin s=1; cout=0; end
            2'b10:begin s=1; cout=0; end
            2'b11:begin s=0; cout=1; end
        endcase
    end
    
endmodule
