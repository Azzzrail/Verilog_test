`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 24.04.2020 16:59:30
// Design Name:
// Module Name: test_tb
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

`timescale  1 ns / 10 ps

module tb_min (
  input [0:0] clock
  );


  reg  osc_clk, rst_n;        // can use logic

  //---- osc_clk = 100 MHz
  initial begin
    osc_clk = 0;
    forever begin
      #5ns osc_clk = ~osc_clk;
    end
  end

  //---- reset
  initial begin
    rst_n = 1'b0;
    repeat(20) @(posedge osc_clk);
    rst_n = 1'b1;
  end

  //---- for asynchronous:
  // initial begin
  //   rst_n = 1'b0;
  //   #200ns rst_n = 1'b1;
  // end

  //---- inst
  top     #(
    .DATA_W      ('d8),
    .ADDR_W      ('d3)
)
  dut_top(
    .i_clk        (osc_clk),
    .i_rst_n      (rst_n),
    .i_wr         ('h0),
    .i_data       ('h0),
    .o_data       ()
);

/*
  //---- just an example of transmition bit by bit

  reg din_p;
  reg [11:0] adc_mem = 12'b011001100101; //12'h665;

  initial begin
    din_p <= 1'b0;
    forever begin
      for (int i = 0; i < 12; i++) begin
        @(posedge dco_data_p or posedge dco_data_n)
        din_p <= adc_mem[i];
      end
    end
  end

*/

endmodule // tb_min
