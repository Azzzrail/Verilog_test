//    AD5662 DAC controller (serializer)
//
//    Copyright 2013 Alexey Shutov
//
//    This file may be used under the terms of the
//    GNU General Public License version 3.0 as
//    published by the Free Software Foundation.
//    http://www.gnu.org/licenses/gpl.html
//

module ad5662_ctrl #(
   parameter CLK_MHZ = 100,
   parameter DATA_BITS = 8
) (
   input clk,
   input reset,

   input [7:0] data_i,
   input [1:0] pd_i,
   input write_i,
   output busy_o,
   // serial interface
   output sdout_o,
   output sclk_o,
   output  sync_b_o
);

// state machine
parameter IDLE = 0;
parameter DATA = 1;
parameter LOAD = 2;
parameter data_substitution = 50;
reg [3:0] state, state_d;
reg [5:0] bitcnt;
reg [DATA_BITS-1:0] data_sreg = 0;
reg clk_t_trig = 0;
reg write_req = 0;
reg [15:0] clkcnt = CLK_MHZ;
reg ce = 0;

//data_i = data_substitution;
//reg data_substitution [7:0];
//data_substitution <= 8'b11000010
always @(posedge clk)
   if (ce) state_d <= state;
always @(posedge clk)
   if ((state == IDLE) && write_i)
      write_req <= 1;
   else if (state != IDLE)
      write_req <= 0;

wire shift_sreg = (ce && (state == DATA) && (state_d == DATA) && ~clk_t_trig);
wire store_sreg = ((state == IDLE) && write_i);


always @(posedge clk)
   if (store_sreg)
      data_sreg <= {6'b0, pd_i[1:0], data_i[7:0]};
   else if (shift_sreg)
      data_sreg[DATA_BITS-1:0] <= {data_sreg[DATA_BITS-2:0], 1'b0};

always @(posedge clk)
   if (reset) begin
      ce <= CLK_MHZ;
      clkcnt <= CLK_MHZ;
   end
   else begin
      if (clkcnt == 0) begin
         clkcnt <= CLK_MHZ;
         ce <= 1;
      end else begin
         clkcnt <= clkcnt - 1'b1;
         ce <= 0;
      end
   end


always @(posedge clk)
begin
   if (reset) begin
      state <= IDLE;
   end
   else begin
   if (ce) begin
      case(state)
         IDLE:      if (write_req) state <= DATA;
         DATA:      if (bitcnt == DATA_BITS) state <= LOAD;
         LOAD:      state <= IDLE;
         default:   state <= IDLE;
      endcase
   end
   end
end

always @(posedge clk)
   if (reset)
      clk_t_trig <= 0;
   else if (ce && (state == DATA) && (bitcnt < DATA_BITS))
      clk_t_trig <= ~clk_t_trig;

// bitcnt
always @(posedge clk)
begin
   if (reset)
      bitcnt <= 0;
   else if (ce)
      begin
         if (state == DATA) begin
            if (clk_t_trig)
               bitcnt <= bitcnt + 1;
            end
         else
         bitcnt <= 0;
      end
end

assign sdout_o = data_sreg[DATA_BITS-1];
assign sclk_o = clk_t_trig;
assign sync_b_o = (state == IDLE); //negative logic
assign busy_o = (state != IDLE);


endmodule
