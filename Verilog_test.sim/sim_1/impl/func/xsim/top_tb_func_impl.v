// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Tue Apr 28 10:06:54 2020
// Host        : localhost.localdomain running 64-bit Fedora release 31 (Thirty One)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/burtsev/Documents/FPGA/Verilog_test/Verilog_test.sim/sim_1/impl/func/xsim/top_tb_func_impl.v
// Design      : top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Buttlon_logic
   (Q,
    \test_data_reg[0]_0 ,
    btn2_i_IBUF,
    btn1_i_IBUF,
    btn3_i_IBUF,
    clk_IBUF_BUFG);
  output [5:0]Q;
  output \test_data_reg[0]_0 ;
  input btn2_i_IBUF;
  input btn1_i_IBUF;
  input btn3_i_IBUF;
  input clk_IBUF_BUFG;

  wire [5:0]Q;
  wire btn1_i_IBUF;
  wire btn2_i_IBUF;
  wire btn3_i_IBUF;
  wire clk_IBUF_BUFG;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state_reg_n_0_[0] ;
  wire \next_state_reg_n_0_[1] ;
  wire [1:0]res_fsm;
  wire [6:1]test_data;
  wire test_data0;
  wire \test_data[0]_i_1_n_0 ;
  wire \test_data_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h4466D5FF)) 
    \next_state[0]_i_1 
       (.I0(res_fsm[1]),
        .I1(res_fsm[0]),
        .I2(btn2_i_IBUF),
        .I3(btn3_i_IBUF),
        .I4(btn1_i_IBUF),
        .O(\next_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h263F)) 
    \next_state[1]_i_1 
       (.I0(res_fsm[1]),
        .I1(res_fsm[0]),
        .I2(btn2_i_IBUF),
        .I3(btn1_i_IBUF),
        .O(\next_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(\next_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \res_fsm_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\next_state_reg_n_0_[0] ),
        .Q(res_fsm[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \res_fsm_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\next_state_reg_n_0_[1] ),
        .Q(res_fsm[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBAFFBABBBAEEB2AA)) 
    \test_data[0]_i_1 
       (.I0(\test_data_reg[0]_0 ),
        .I1(res_fsm[1]),
        .I2(btn2_i_IBUF),
        .I3(res_fsm[0]),
        .I4(btn3_i_IBUF),
        .I5(btn1_i_IBUF),
        .O(\test_data[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \test_data[1]_i_1 
       (.I0(res_fsm[0]),
        .O(test_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \test_data[2]_i_1 
       (.I0(res_fsm[0]),
        .I1(res_fsm[1]),
        .O(test_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \test_data[3]_i_1 
       (.I0(res_fsm[1]),
        .I1(res_fsm[0]),
        .O(test_data[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \test_data[4]_i_1 
       (.I0(res_fsm[1]),
        .O(test_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \test_data[5]_i_1 
       (.I0(res_fsm[1]),
        .I1(res_fsm[0]),
        .O(test_data[5]));
  LUT5 #(
    .INIT(32'h30BB3488)) 
    \test_data[6]_i_1 
       (.I0(btn2_i_IBUF),
        .I1(res_fsm[0]),
        .I2(btn3_i_IBUF),
        .I3(res_fsm[1]),
        .I4(btn1_i_IBUF),
        .O(test_data0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \test_data[6]_i_2 
       (.I0(res_fsm[0]),
        .I1(res_fsm[1]),
        .O(test_data[6]));
  FDRE #(
    .INIT(1'b0)) 
    \test_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\test_data[0]_i_1_n_0 ),
        .Q(\test_data_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \test_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(test_data0),
        .D(test_data[1]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \test_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(test_data0),
        .D(test_data[2]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \test_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(test_data0),
        .D(test_data[3]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \test_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(test_data0),
        .D(test_data[4]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \test_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(test_data0),
        .D(test_data[5]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \test_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(test_data0),
        .D(test_data[6]),
        .Q(Q[5]),
        .R(1'b0));
endmodule

module ad5662_ctrl
   (sclk_o_OBUF,
    Q,
    clk_IBUF_BUFG,
    \data_sreg_reg[0]_0 ,
    \data_sreg_reg[6]_0 );
  output sclk_o_OBUF;
  output [0:0]Q;
  input clk_IBUF_BUFG;
  input \data_sreg_reg[0]_0 ;
  input [5:0]\data_sreg_reg[6]_0 ;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire [0:0]Q;
  wire \bitcnt[5]_i_1_n_0 ;
  wire \bitcnt[5]_i_2_n_0 ;
  wire [5:0]bitcnt_reg__0;
  wire ce;
  wire ce_reg_n_0;
  wire clk_IBUF_BUFG;
  wire clk_t_trig_i_1_n_0;
  wire [15:0]clkcnt;
  wire clkcnt0_carry__0_i_1_n_0;
  wire clkcnt0_carry__0_i_2_n_0;
  wire clkcnt0_carry__0_i_3_n_0;
  wire clkcnt0_carry__0_i_4_n_0;
  wire clkcnt0_carry__0_n_0;
  wire clkcnt0_carry__1_i_1_n_0;
  wire clkcnt0_carry__1_i_2_n_0;
  wire clkcnt0_carry__1_i_3_n_0;
  wire clkcnt0_carry__1_i_4_n_0;
  wire clkcnt0_carry__1_n_0;
  wire clkcnt0_carry__2_i_1_n_0;
  wire clkcnt0_carry__2_i_2_n_0;
  wire clkcnt0_carry__2_i_3_n_0;
  wire clkcnt0_carry_i_1_n_0;
  wire clkcnt0_carry_i_2_n_0;
  wire clkcnt0_carry_i_3_n_0;
  wire clkcnt0_carry_i_4_n_0;
  wire clkcnt0_carry_n_0;
  wire \clkcnt[15]_i_2_n_0 ;
  wire \clkcnt[15]_i_3_n_0 ;
  wire \clkcnt[15]_i_4_n_0 ;
  wire \clkcnt[15]_i_5_n_0 ;
  wire [6:2]clkcnt_0;
  wire [15:1]data0;
  wire [0:0]data0__0;
  wire [6:0]data_sreg;
  wire \data_sreg[7]_i_1_n_0 ;
  wire \data_sreg_reg[0]_0 ;
  wire [5:0]\data_sreg_reg[6]_0 ;
  wire [5:0]p_0_in;
  wire [7:0]p_1_in;
  wire sclk_o_OBUF;
  wire [1:0]state_d;
  wire \state_d[0]_i_1_n_0 ;
  wire \state_d[1]_i_1_n_0 ;
  wire [1:0]state_reg;
  wire write_req;
  wire [2:0]NLW_clkcnt0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_clkcnt0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_clkcnt0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_clkcnt0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_clkcnt0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFAFAFAFA50707070)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(ce_reg_n_0),
        .I1(write_req),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(state_reg[0]),
        .I5(state_reg[1]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555AA800000)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(ce_reg_n_0),
        .I1(write_req),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(state_reg[0]),
        .I5(state_reg[1]),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF5F5A0A0F5FF8080)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(ce_reg_n_0),
        .I1(write_req),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state[2]_i_2_n_0 ),
        .I4(state_reg[0]),
        .I5(state_reg[1]),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(bitcnt_reg__0[5]),
        .I1(bitcnt_reg__0[4]),
        .I2(bitcnt_reg__0[1]),
        .I3(bitcnt_reg__0[3]),
        .I4(bitcnt_reg__0[0]),
        .I5(bitcnt_reg__0[2]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:001,DATA:100,LOAD:010," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,DATA:100,LOAD:010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(state_reg[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:001,DATA:100,LOAD:010," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(state_reg[0]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \bitcnt[0]_i_1 
       (.I0(bitcnt_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bitcnt[1]_i_1 
       (.I0(bitcnt_reg__0[0]),
        .I1(bitcnt_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bitcnt[2]_i_1 
       (.I0(bitcnt_reg__0[0]),
        .I1(bitcnt_reg__0[1]),
        .I2(bitcnt_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bitcnt[3]_i_1 
       (.I0(bitcnt_reg__0[1]),
        .I1(bitcnt_reg__0[0]),
        .I2(bitcnt_reg__0[2]),
        .I3(bitcnt_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bitcnt[4]_i_1 
       (.I0(bitcnt_reg__0[2]),
        .I1(bitcnt_reg__0[0]),
        .I2(bitcnt_reg__0[1]),
        .I3(bitcnt_reg__0[3]),
        .I4(bitcnt_reg__0[4]),
        .O(p_0_in[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \bitcnt[5]_i_1 
       (.I0(ce_reg_n_0),
        .I1(state_reg[0]),
        .O(\bitcnt[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bitcnt[5]_i_2 
       (.I0(ce_reg_n_0),
        .I1(sclk_o_OBUF),
        .O(\bitcnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bitcnt[5]_i_3 
       (.I0(bitcnt_reg__0[3]),
        .I1(bitcnt_reg__0[1]),
        .I2(bitcnt_reg__0[0]),
        .I3(bitcnt_reg__0[2]),
        .I4(bitcnt_reg__0[4]),
        .I5(bitcnt_reg__0[5]),
        .O(p_0_in[5]));
  FDRE #(
    .INIT(1'b0)) 
    \bitcnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\bitcnt[5]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(bitcnt_reg__0[0]),
        .R(\bitcnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\bitcnt[5]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(bitcnt_reg__0[1]),
        .R(\bitcnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\bitcnt[5]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(bitcnt_reg__0[2]),
        .R(\bitcnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\bitcnt[5]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(bitcnt_reg__0[3]),
        .R(\bitcnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\bitcnt[5]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(bitcnt_reg__0[4]),
        .R(\bitcnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\bitcnt[5]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(bitcnt_reg__0[5]),
        .R(\bitcnt[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    ce_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ce),
        .Q(ce_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEFFFFFF01000000)) 
    clk_t_trig_i_1
       (.I0(bitcnt_reg__0[5]),
        .I1(bitcnt_reg__0[4]),
        .I2(bitcnt_reg__0[3]),
        .I3(ce_reg_n_0),
        .I4(state_reg[0]),
        .I5(sclk_o_OBUF),
        .O(clk_t_trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_t_trig_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_t_trig_i_1_n_0),
        .Q(sclk_o_OBUF),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 clkcnt0_carry
       (.CI(1'b0),
        .CO({clkcnt0_carry_n_0,NLW_clkcnt0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(clkcnt[0]),
        .DI(clkcnt[4:1]),
        .O(data0[4:1]),
        .S({clkcnt0_carry_i_1_n_0,clkcnt0_carry_i_2_n_0,clkcnt0_carry_i_3_n_0,clkcnt0_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 clkcnt0_carry__0
       (.CI(clkcnt0_carry_n_0),
        .CO({clkcnt0_carry__0_n_0,NLW_clkcnt0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(clkcnt[8:5]),
        .O(data0[8:5]),
        .S({clkcnt0_carry__0_i_1_n_0,clkcnt0_carry__0_i_2_n_0,clkcnt0_carry__0_i_3_n_0,clkcnt0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry__0_i_1
       (.I0(clkcnt[8]),
        .O(clkcnt0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry__0_i_2
       (.I0(clkcnt[7]),
        .O(clkcnt0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry__0_i_3
       (.I0(clkcnt[6]),
        .O(clkcnt0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry__0_i_4
       (.I0(clkcnt[5]),
        .O(clkcnt0_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 clkcnt0_carry__1
       (.CI(clkcnt0_carry__0_n_0),
        .CO({clkcnt0_carry__1_n_0,NLW_clkcnt0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(clkcnt[12:9]),
        .O(data0[12:9]),
        .S({clkcnt0_carry__1_i_1_n_0,clkcnt0_carry__1_i_2_n_0,clkcnt0_carry__1_i_3_n_0,clkcnt0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry__1_i_1
       (.I0(clkcnt[12]),
        .O(clkcnt0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry__1_i_2
       (.I0(clkcnt[11]),
        .O(clkcnt0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry__1_i_3
       (.I0(clkcnt[10]),
        .O(clkcnt0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry__1_i_4
       (.I0(clkcnt[9]),
        .O(clkcnt0_carry__1_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 clkcnt0_carry__2
       (.CI(clkcnt0_carry__1_n_0),
        .CO(NLW_clkcnt0_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,clkcnt[14:13]}),
        .O({NLW_clkcnt0_carry__2_O_UNCONNECTED[3],data0[15:13]}),
        .S({1'b0,clkcnt0_carry__2_i_1_n_0,clkcnt0_carry__2_i_2_n_0,clkcnt0_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry__2_i_1
       (.I0(clkcnt[15]),
        .O(clkcnt0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry__2_i_2
       (.I0(clkcnt[14]),
        .O(clkcnt0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry__2_i_3
       (.I0(clkcnt[13]),
        .O(clkcnt0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry_i_1
       (.I0(clkcnt[4]),
        .O(clkcnt0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry_i_2
       (.I0(clkcnt[3]),
        .O(clkcnt0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry_i_3
       (.I0(clkcnt[2]),
        .O(clkcnt0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clkcnt0_carry_i_4
       (.I0(clkcnt[1]),
        .O(clkcnt0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \clkcnt[0]_i_1 
       (.I0(clkcnt[0]),
        .O(data0__0));
  LUT4 #(
    .INIT(16'h0001)) 
    \clkcnt[15]_i_1 
       (.I0(\clkcnt[15]_i_2_n_0 ),
        .I1(\clkcnt[15]_i_3_n_0 ),
        .I2(\clkcnt[15]_i_4_n_0 ),
        .I3(\clkcnt[15]_i_5_n_0 ),
        .O(ce));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clkcnt[15]_i_2 
       (.I0(clkcnt[10]),
        .I1(clkcnt[11]),
        .I2(clkcnt[8]),
        .I3(clkcnt[9]),
        .O(\clkcnt[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clkcnt[15]_i_3 
       (.I0(clkcnt[15]),
        .I1(clkcnt[14]),
        .I2(clkcnt[12]),
        .I3(clkcnt[13]),
        .O(\clkcnt[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clkcnt[15]_i_4 
       (.I0(clkcnt[2]),
        .I1(clkcnt[3]),
        .I2(clkcnt[0]),
        .I3(clkcnt[1]),
        .O(\clkcnt[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clkcnt[15]_i_5 
       (.I0(clkcnt[6]),
        .I1(clkcnt[7]),
        .I2(clkcnt[4]),
        .I3(clkcnt[5]),
        .O(\clkcnt[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \clkcnt[2]_i_1 
       (.I0(\clkcnt[15]_i_2_n_0 ),
        .I1(\clkcnt[15]_i_3_n_0 ),
        .I2(\clkcnt[15]_i_4_n_0 ),
        .I3(\clkcnt[15]_i_5_n_0 ),
        .I4(data0[2]),
        .O(clkcnt_0[2]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \clkcnt[5]_i_1 
       (.I0(\clkcnt[15]_i_2_n_0 ),
        .I1(\clkcnt[15]_i_3_n_0 ),
        .I2(\clkcnt[15]_i_4_n_0 ),
        .I3(\clkcnt[15]_i_5_n_0 ),
        .I4(data0[5]),
        .O(clkcnt_0[5]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \clkcnt[6]_i_1 
       (.I0(\clkcnt[15]_i_2_n_0 ),
        .I1(\clkcnt[15]_i_3_n_0 ),
        .I2(\clkcnt[15]_i_4_n_0 ),
        .I3(\clkcnt[15]_i_5_n_0 ),
        .I4(data0[6]),
        .O(clkcnt_0[6]));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0__0),
        .Q(clkcnt[0]),
        .R(ce));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(clkcnt[10]),
        .R(ce));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(clkcnt[11]),
        .R(ce));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(clkcnt[12]),
        .R(ce));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[13]),
        .Q(clkcnt[13]),
        .R(ce));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[14]),
        .Q(clkcnt[14]),
        .R(ce));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[15]),
        .Q(clkcnt[15]),
        .R(ce));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(clkcnt[1]),
        .R(ce));
  FDRE #(
    .INIT(1'b1)) 
    \clkcnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clkcnt_0[2]),
        .Q(clkcnt[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(clkcnt[3]),
        .R(ce));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(clkcnt[4]),
        .R(ce));
  FDRE #(
    .INIT(1'b1)) 
    \clkcnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clkcnt_0[5]),
        .Q(clkcnt[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \clkcnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clkcnt_0[6]),
        .Q(clkcnt[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[7]),
        .Q(clkcnt[7]),
        .R(ce));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[8]),
        .Q(clkcnt[8]),
        .R(ce));
  FDRE #(
    .INIT(1'b0)) 
    \clkcnt_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(clkcnt[9]),
        .R(ce));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sreg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\data_sreg_reg[0]_0 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sreg[1]_i_1 
       (.I0(\data_sreg_reg[6]_0 [0]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_sreg[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sreg[2]_i_1 
       (.I0(\data_sreg_reg[6]_0 [1]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_sreg[1]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sreg[3]_i_1 
       (.I0(\data_sreg_reg[6]_0 [2]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_sreg[2]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sreg[4]_i_1 
       (.I0(\data_sreg_reg[6]_0 [3]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_sreg[3]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sreg[5]_i_1 
       (.I0(\data_sreg_reg[6]_0 [4]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_sreg[4]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sreg[6]_i_1 
       (.I0(\data_sreg_reg[6]_0 [5]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(data_sreg[5]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hAABAAAAAAAAAAAAA)) 
    \data_sreg[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sclk_o_OBUF),
        .I2(state_d[0]),
        .I3(state_d[1]),
        .I4(ce_reg_n_0),
        .I5(state_reg[0]),
        .O(\data_sreg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_sreg[7]_i_2 
       (.I0(data_sreg[6]),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(p_1_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \data_sreg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_sreg[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(data_sreg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_sreg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_sreg[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(data_sreg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_sreg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_sreg[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(data_sreg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_sreg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_sreg[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(data_sreg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_sreg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_sreg[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(data_sreg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_sreg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_sreg[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(data_sreg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_sreg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_sreg[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(data_sreg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_sreg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\data_sreg[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(Q),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_d[0]_i_1 
       (.I0(state_reg[0]),
        .I1(ce_reg_n_0),
        .I2(state_d[0]),
        .O(\state_d[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \state_d[1]_i_1 
       (.I0(state_reg[1]),
        .I1(ce_reg_n_0),
        .I2(state_d[1]),
        .O(\state_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_d_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_d[0]_i_1_n_0 ),
        .Q(state_d[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_d_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_d[1]_i_1_n_0 ),
        .Q(state_d[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    write_req_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg_n_0_[0] ),
        .Q(write_req),
        .R(1'b0));
endmodule

(* CLK_temp = "100" *) (* ECO_CHECKSUM = "5ffb4f06" *) (* bits = "8" *) 
(* NotValidForBitStream *)
module top
   (clk,
    reset_i,
    btn1_i,
    btn2_i,
    btn3_i,
    CS,
    sdout_o,
    sclk_o);
  input clk;
  input reset_i;
  input btn1_i;
  input btn2_i;
  input btn3_i;
  output CS;
  output sdout_o;
  output sclk_o;

  wire Buttlon_logic_n_0;
  wire Buttlon_logic_n_1;
  wire Buttlon_logic_n_2;
  wire Buttlon_logic_n_3;
  wire Buttlon_logic_n_4;
  wire Buttlon_logic_n_5;
  wire Buttlon_logic_n_6;
  wire CS;
  wire btn1_i;
  wire btn1_i_IBUF;
  wire btn2_i;
  wire btn2_i_IBUF;
  wire btn3_i;
  wire btn3_i_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire sclk_o;
  wire sclk_o_OBUF;
  wire sdout_o;
  wire sdout_o_OBUF;

  Buttlon_logic Buttlon_logic
       (.Q({Buttlon_logic_n_0,Buttlon_logic_n_1,Buttlon_logic_n_2,Buttlon_logic_n_3,Buttlon_logic_n_4,Buttlon_logic_n_5}),
        .btn1_i_IBUF(btn1_i_IBUF),
        .btn2_i_IBUF(btn2_i_IBUF),
        .btn3_i_IBUF(btn3_i_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\test_data_reg[0]_0 (Buttlon_logic_n_6));
  OBUF CS_OBUF_inst
       (.I(1'b1),
        .O(CS));
  ad5662_ctrl ad5662_ctrl
       (.Q(sdout_o_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\data_sreg_reg[0]_0 (Buttlon_logic_n_6),
        .\data_sreg_reg[6]_0 ({Buttlon_logic_n_0,Buttlon_logic_n_1,Buttlon_logic_n_2,Buttlon_logic_n_3,Buttlon_logic_n_4,Buttlon_logic_n_5}),
        .sclk_o_OBUF(sclk_o_OBUF));
  IBUF btn1_i_IBUF_inst
       (.I(btn1_i),
        .O(btn1_i_IBUF));
  IBUF btn2_i_IBUF_inst
       (.I(btn2_i),
        .O(btn2_i_IBUF));
  IBUF btn3_i_IBUF_inst
       (.I(btn3_i),
        .O(btn3_i_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF sclk_o_OBUF_inst
       (.I(sclk_o_OBUF),
        .O(sclk_o));
  OBUF sdout_o_OBUF_inst
       (.I(sdout_o_OBUF),
        .O(sdout_o));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
