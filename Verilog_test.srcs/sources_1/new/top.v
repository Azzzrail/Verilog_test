`timescale 1ns / 1ps
`include "AFI_spi_test.v"
`include "Buttlon_logic.v"
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
  //input beam_input_reg_i,
  input clk,
  input reset_i,
  //input [7:0] data_i,
  input btn1_i, btn2_i, btn3_i,
  output CS,
  //input write_spi_i,
  //output reset_o,
  //output TrigOut,

  //wire [7:0] data_i,
  //wire [1:0] pd_i,
  //wire write_i,

  output sdout_o,
  output sclk_o

  //wire sync_b_o
//CLK wizard
  //wire clk_out1,
  //wire clk_in1,
//TEST DATA
);
  //wire busy_o;
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

assign CS = 1'b1;
endmodule
