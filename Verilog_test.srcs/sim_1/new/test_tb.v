`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
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

module top_tb();

  reg osc_clk, rst_n;        // can use logic
  reg btn1_on, btn2_on, btn3_on;
  reg reset_tb;
  //reg [7:0] data_i = 0;
  reg write_o;
  reg reset_o;
  reg busy;
  wire sdout;
//  reg sclk;
  reg sync_b_o;
  reg write_spi_tb;
  initial begin
      btn1_on = 0;
      btn2_on = 0;
      btn3_on = 0;
//      reset_tb = 0;
      osc_clk = 0;
      write_o = 1;
      reset_o = 0;
      write_spi_tb = 1;
  //---- osc_clk = 100 MHz
  forever begin
    #5 osc_clk = ~osc_clk;
  end
      end




  //---- reset
  initial begin
    rst_n = 1'b1;
    repeat(20) @(posedge osc_clk);
    rst_n = 1'b0;
  end

  //---- for asynchronous:
  // initial begin
  //   rst_n = 1'b0;
  //   #200ns rst_n = 1'b1;
  // end

  initial begin
  btn1_on = 1'b1;
  repeat(50000) @(posedge osc_clk);
  btn1_on = 1'b0;

  btn2_on = 1'b1;
  repeat(50000) @(posedge osc_clk);
  btn2_on = 1'b0;

  btn3_on = 1'b1;
  repeat(50000) @(posedge osc_clk);
  btn3_on = 1'b0;
 //#100000 btn1_on = ~btn1_on;
 // #600000 btn1_on = ~btn1_on;
 // #900000 btn2_on = ~btn2_on;
 // #1700000 btn2_on = ~btn2_on;
 // #1800000 btn3_on = ~btn3_on;
 // #3000000 btn3_on = ~btn3_on;
  //    forever begin
  //    end
//@(posedge osc_clk)
//    #1500 btn2_on = ~btn2_on;
//    #7500 btn3_on = ~btn3_on;
      end



  //---- inst
  top     #(
    //parameter parameter_type parameter_name = parameter_value,
    //.DATA_W      ('d8),
    //.ADDR_W      ('d3)
)
  dut_top(
    .clk          (osc_clk),
    .reset_i      (rst_n),
    .btn1_i       (btn1_on),
    .btn2_i       (btn2_on),
    .btn3_i       (btn3_on),
//    .write_spi_i  (write_spi_tb),
    .sdout_o      (sdout)
 //   .data_i       (data_i)
);
//assign write_spi_tb = write_o;
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
