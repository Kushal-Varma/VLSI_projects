`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2023 20:30:56
// Design Name: 
// Module Name: FSM_pattern_recognizer_moore
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


module FSM_pattern_recognizer_moore(clk,reset,din,z);
    input wire clk,reset,din;
    output reg z;
    
    parameter sin=3'b000, s1=3'b001, s10=3'b010, s101=3'b011, s1011=3'b111;
    reg [2:0] state,next_state;
    
    always@(posedge clk, posedge reset)
    begin
        if (reset)
            state<=sin;
        else
            state<=next_state;
    end
    
    always@(state,din)
    begin
        case(state)
            sin:    begin
                        if (din==1)
                            next_state=s1;
                        else
                            next_state=sin;
                        z=0;
                    end
            s1:     begin
                        if (din==0)
                            next_state=s10;
                        else
                            next_state=s1;
                        z=0;
                    end
            s10:    begin
                        if (din==1)
                            next_state=s101;
                        else
                            next_state=sin;
                        z=0;
                    end
            s101:   begin
                        if (din==1)
                            next_state=s1011;
                        else
                            next_state=s10;
                        z=0;
                    end
            s1011:  begin
                        if(din==1)
                            next_state=s1;
                        else
                            next_state=s10;
                        z=1;
                    end
                    
            default:    next_state=sin;
        endcase
    end
endmodule
