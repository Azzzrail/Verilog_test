`timescale 1ns / 1ps
`include "AFI_spi_test.v"
`include "Buttlon_logic.v"
`include "bram.v"
/////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//  (Open View -> Developer -> Toggle Developer Tools)
// Create Date: 14.04.2020 16:54:34
// Design Name:
// Module Name: top
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


module top  #(
   parameter CLK_temp = 100,
   parameter bits = 8
)(
  input clk,
  input reset_i,
  input btn1_i, btn2_i, btn3_i,
  output CS,
  output sdout_o,
  output sclk_o,

///////////BRAM Testing

input wire i_wr, i_rd,
wire [2:0] i_wr_addr, i_rd_addr,
wire [7:0] i_wr_data,
output reg [7:0] o_rd_data
);
  wire [7:0] test_data_o;
  wire reset_o;
  wire sync_b_o;

ad5662_ctrl ad5662_ctrl (
.clk (clk),
.reset (reset_o),

.data_i (test_data_o),
.pd_i (2'b0),
.write_i (1'b1),//write_spi_i),
.busy_o (),
// serial interface
.sdout_o (sdout_o),
.sclk_o (sclk_o),
.sync_b_o (sync_b_o)
);

Buttlon_logic Buttlon_logic(
.clk          (clk),
.btn1_i       (btn1_i),
.btn2_i       (btn2_i),
.btn3_i       (btn3_i),
.test_data_o  (test_data_o),
.reset_i      (reset_o)
);

bram bram(
.clk          (clk),
.i_wr         (i_wr),
.i_rd         (i_rd),
.i_wr_addr    (i_wr_addr),
.i_rd_addr    (i_rd_addr),
.i_wr_data    (i_wr_data),
.o_rd_data    (o_rd_data)
);

assign CS = 1'b1;


genvar y;
genvar dat;
generate
for(y = 0; y < (10) ; y = y + 1 )
begin : dff_generation
//ram [y] <= dat;
//dat <<;
end
endgenerate


endmodule
