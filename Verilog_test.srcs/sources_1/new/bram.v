`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 07.05.2020 17:15:42
// Design Name:
// Module Name: bram
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


module bram(
      input clk,
      input wire i_wr, i_rd,
      input wire [2:0] i_wr_addr, i_rd_addr,
      input wire [7:0] i_wr_data,
      output reg [7:0] o_rd_data

    );


parameter  DATA_W = 8;
parameter  BUF_DEPTH = 8;
reg  [DATA_W-1:0]             ram [BUF_DEPTH-1:0];

  always @(posedge clk)
    if (i_wr) ram[i_wr_addr] <= i_wr_data;


always @(*) begin
     if(i_rd) o_rd_data = ram[i_rd_addr];
end

endmodule
