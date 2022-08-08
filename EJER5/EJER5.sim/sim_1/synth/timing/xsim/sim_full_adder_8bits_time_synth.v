// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Aug  6 15:23:19 2022
// Host        : DESKTOP-TV0ASU4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/VIVADO/EJER5/Ejercicio_5/EJER5/EJER5.sim/sim_1/synth/timing/xsim/sim_full_adder_8bits_time_synth.v
// Design      : full_adder_8bits
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module full_adder_8bits
   (s1,
    s0,
    cin,
    cout,
    sum);
  input [7:0]s1;
  input [7:0]s0;
  input cin;
  output cout;
  output [7:0]sum;

  wire carry_1;
  wire carry_3;
  wire carry_5;
  wire cin;
  wire cin_IBUF;
  wire cout;
  wire cout_OBUF;
  wire [7:0]s0;
  wire [7:0]s0_IBUF;
  wire [7:0]s1;
  wire [7:0]s1_IBUF;
  wire [7:0]sum;
  wire [7:0]sum_OBUF;

initial begin
 $sdf_annotate("sim_full_adder_8bits_time_synth.sdf",,,,"tool_control");
end
  IBUF cin_IBUF_inst
       (.I(cin),
        .O(cin_IBUF));
  OBUF cout_OBUF_inst
       (.I(cout_OBUF),
        .O(cout));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    cout_OBUF_inst_i_1
       (.I0(s0_IBUF[7]),
        .I1(s1_IBUF[7]),
        .I2(carry_5),
        .I3(s1_IBUF[6]),
        .I4(s0_IBUF[6]),
        .O(cout_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    cout_OBUF_inst_i_2
       (.I0(s0_IBUF[5]),
        .I1(s1_IBUF[5]),
        .I2(carry_3),
        .I3(s1_IBUF[4]),
        .I4(s0_IBUF[4]),
        .O(carry_5));
  IBUF \s0_IBUF[0]_inst 
       (.I(s0[0]),
        .O(s0_IBUF[0]));
  IBUF \s0_IBUF[1]_inst 
       (.I(s0[1]),
        .O(s0_IBUF[1]));
  IBUF \s0_IBUF[2]_inst 
       (.I(s0[2]),
        .O(s0_IBUF[2]));
  IBUF \s0_IBUF[3]_inst 
       (.I(s0[3]),
        .O(s0_IBUF[3]));
  IBUF \s0_IBUF[4]_inst 
       (.I(s0[4]),
        .O(s0_IBUF[4]));
  IBUF \s0_IBUF[5]_inst 
       (.I(s0[5]),
        .O(s0_IBUF[5]));
  IBUF \s0_IBUF[6]_inst 
       (.I(s0[6]),
        .O(s0_IBUF[6]));
  IBUF \s0_IBUF[7]_inst 
       (.I(s0[7]),
        .O(s0_IBUF[7]));
  IBUF \s1_IBUF[0]_inst 
       (.I(s1[0]),
        .O(s1_IBUF[0]));
  IBUF \s1_IBUF[1]_inst 
       (.I(s1[1]),
        .O(s1_IBUF[1]));
  IBUF \s1_IBUF[2]_inst 
       (.I(s1[2]),
        .O(s1_IBUF[2]));
  IBUF \s1_IBUF[3]_inst 
       (.I(s1[3]),
        .O(s1_IBUF[3]));
  IBUF \s1_IBUF[4]_inst 
       (.I(s1[4]),
        .O(s1_IBUF[4]));
  IBUF \s1_IBUF[5]_inst 
       (.I(s1[5]),
        .O(s1_IBUF[5]));
  IBUF \s1_IBUF[6]_inst 
       (.I(s1[6]),
        .O(s1_IBUF[6]));
  IBUF \s1_IBUF[7]_inst 
       (.I(s1[7]),
        .O(s1_IBUF[7]));
  OBUF \sum_OBUF[0]_inst 
       (.I(sum_OBUF[0]),
        .O(sum[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_OBUF[0]_inst_i_1 
       (.I0(s0_IBUF[0]),
        .I1(s1_IBUF[0]),
        .I2(cin_IBUF),
        .O(sum_OBUF[0]));
  OBUF \sum_OBUF[1]_inst 
       (.I(sum_OBUF[1]),
        .O(sum[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_OBUF[1]_inst_i_1 
       (.I0(s0_IBUF[1]),
        .I1(s1_IBUF[1]),
        .I2(s0_IBUF[0]),
        .I3(s1_IBUF[0]),
        .I4(cin_IBUF),
        .O(sum_OBUF[1]));
  OBUF \sum_OBUF[2]_inst 
       (.I(sum_OBUF[2]),
        .O(sum[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_OBUF[2]_inst_i_1 
       (.I0(s0_IBUF[2]),
        .I1(s1_IBUF[2]),
        .I2(carry_1),
        .O(sum_OBUF[2]));
  OBUF \sum_OBUF[3]_inst 
       (.I(sum_OBUF[3]),
        .O(sum[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_OBUF[3]_inst_i_1 
       (.I0(s0_IBUF[3]),
        .I1(s1_IBUF[3]),
        .I2(s0_IBUF[2]),
        .I3(s1_IBUF[2]),
        .I4(carry_1),
        .O(sum_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_OBUF[3]_inst_i_2 
       (.I0(s0_IBUF[1]),
        .I1(s1_IBUF[1]),
        .I2(cin_IBUF),
        .I3(s1_IBUF[0]),
        .I4(s0_IBUF[0]),
        .O(carry_1));
  OBUF \sum_OBUF[4]_inst 
       (.I(sum_OBUF[4]),
        .O(sum[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_OBUF[4]_inst_i_1 
       (.I0(s0_IBUF[4]),
        .I1(s1_IBUF[4]),
        .I2(carry_3),
        .O(sum_OBUF[4]));
  OBUF \sum_OBUF[5]_inst 
       (.I(sum_OBUF[5]),
        .O(sum[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_OBUF[5]_inst_i_1 
       (.I0(s0_IBUF[5]),
        .I1(s1_IBUF[5]),
        .I2(s0_IBUF[4]),
        .I3(s1_IBUF[4]),
        .I4(carry_3),
        .O(sum_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \sum_OBUF[5]_inst_i_2 
       (.I0(s0_IBUF[3]),
        .I1(s1_IBUF[3]),
        .I2(carry_1),
        .I3(s1_IBUF[2]),
        .I4(s0_IBUF[2]),
        .O(carry_3));
  OBUF \sum_OBUF[6]_inst 
       (.I(sum_OBUF[6]),
        .O(sum[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \sum_OBUF[6]_inst_i_1 
       (.I0(s0_IBUF[6]),
        .I1(s1_IBUF[6]),
        .I2(carry_5),
        .O(sum_OBUF[6]));
  OBUF \sum_OBUF[7]_inst 
       (.I(sum_OBUF[7]),
        .O(sum[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h99969666)) 
    \sum_OBUF[7]_inst_i_1 
       (.I0(s0_IBUF[7]),
        .I1(s1_IBUF[7]),
        .I2(s0_IBUF[6]),
        .I3(s1_IBUF[6]),
        .I4(carry_5),
        .O(sum_OBUF[7]));
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
