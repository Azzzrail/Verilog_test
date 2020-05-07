`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 26.04.2020 13:18:28
// Design Name:
// Module Name: Buttlon_logic
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


module Buttlon_logic(
    input clk,
    input reset_i,
    input btn1_i,
    input btn2_i,
    input btn3_i,
    output wire [7:0] test_data_o
    //output cs_o,

    );

  reg [7:0] test_data;
  parameter nom1 = 2'b00;
  parameter nom2 = 2'b01;
  parameter nom3 = 2'b10;
  parameter nom0 = 2'b11;
  reg [1:0] next_state;
  reg [1:0] res_fsm = nom0;
  reg ON = 1;
  reg OFF = 0;
  wire reset = reset_i;
  always @(posedge clk)

   begin : FSM_SEQ
     if (reset == 1)
       res_fsm <=   nom0;
      else
       res_fsm <=  next_state;

         case (res_fsm)
            nom1 : begin
            if (btn1_i == 1) begin
               test_data <= 8'b00110011;
               next_state <= nom1;
               end
               else
                  next_state <= nom0;
            end


            nom2 : begin
            if (btn2_i == 1) begin
            test_data <= 8'b01010101;
            next_state <= nom2;
            end
            else
               next_state <= nom0;
            end


            nom3 : begin
            if (btn3_i == 1) begin
            test_data <= 8'b00001111;
            next_state <= nom3;
            end
            else
               next_state <= nom0;
            end


            nom0 : begin
            if(~btn1_i && ~btn2_i && ~btn3_i) begin
                next_state <= nom0;
                test_data <= 8'b00000000;
            end
               else if (btn1_i)
                  next_state <= nom1;
               else if (btn2_i)
                  next_state <= nom2;
               else if (btn3_i)
                  next_state <= nom3;


            end
         endcase

 end
assign test_data_o = test_data;
//assign test_data_o = test_data;


endmodule
