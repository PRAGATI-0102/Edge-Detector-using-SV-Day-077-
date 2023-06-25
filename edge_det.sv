`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2023 11:51:42 PM
// Design Name: 
// Module Name: edge_det
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


module edge_det(

      input     wire    clk,
      input     wire    reset,
      input     wire    a_i,
      output    wire    rising_edge,
      output    wire    falling_edge);
    
      logic a_ff;
    
      always@(posedge clk or posedge reset)
        if (reset)
          a_ff <= 1'b0;
        else
          a_ff <= a_i;
    
      assign rising_edge = ~a_ff & a_i;
      assign falling_edge = a_ff & ~a_i;
      
endmodule
