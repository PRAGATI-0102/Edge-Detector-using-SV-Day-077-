`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2023 11:55:26 PM
// Design Name: 
// Module Name: edge_det_tb
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


module edge_det_tb();

      logic    clk;
      logic    reset;
    
      logic    a_i;
    
      logic    rising_edge;
      logic    falling_edge;
    
      edge_det dut (.*);
    
      always 
      begin
        clk = 1'b1;
        #5;
        clk = 1'b0;
        #5;
      end
    
      initial 
      begin
        reset <= 1'b1;
        a_i <= 1'b1;
        
        @(posedge clk);
        reset <= 1'b0;
        
        @(posedge clk);
        for (int i=0; i<32; i++) 
        begin
          a_i <= $random%2;
          @(posedge clk);
        end
        $finish();
      end
endmodule
