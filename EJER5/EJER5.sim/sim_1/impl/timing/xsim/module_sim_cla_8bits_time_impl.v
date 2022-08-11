// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Aug 10 17:01:54 2022
// Host        : DESKTOP-TV0ASU4 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/VIVADO/EJER5/Ejercicio_5/EJER5/EJER5.sim/sim_1/impl/timing/xsim/module_sim_cla_8bits_time_impl.v
// Design      : module_cla_8bits
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "315ba147" *) (* WIDTH2 = "8" *) 
(* NotValidForBitStream *)
module module_cla_8bits
   (a_pi,
    b_pi,
    result_po);
  input [7:0]a_pi;
  input [7:0]b_pi;
  output [7:0]result_po;

  wire [7:0]a_pi;
  wire [7:0]a_pi_IBUF;
  wire [7:0]b_pi;
  wire [7:0]b_pi_IBUF;
  wire [7:0]result_po;
  wire [7:0]result_po_OBUF;
  wire \result_po_OBUF[4]_inst_i_2_n_0 ;
  wire \result_po_OBUF[7]_inst_i_2_n_0 ;
  wire \result_po_OBUF[7]_inst_i_3_n_0 ;

initial begin
 $sdf_annotate("module_sim_cla_8bits_time_impl.sdf",,,,"tool_control");
end
  IBUF \a_pi_IBUF[0]_inst 
       (.I(a_pi[0]),
        .O(a_pi_IBUF[0]));
  IBUF \a_pi_IBUF[1]_inst 
       (.I(a_pi[1]),
        .O(a_pi_IBUF[1]));
  IBUF \a_pi_IBUF[2]_inst 
       (.I(a_pi[2]),
        .O(a_pi_IBUF[2]));
  IBUF \a_pi_IBUF[3]_inst 
       (.I(a_pi[3]),
        .O(a_pi_IBUF[3]));
  IBUF \a_pi_IBUF[4]_inst 
       (.I(a_pi[4]),
        .O(a_pi_IBUF[4]));
  IBUF \a_pi_IBUF[5]_inst 
       (.I(a_pi[5]),
        .O(a_pi_IBUF[5]));
  IBUF \a_pi_IBUF[6]_inst 
       (.I(a_pi[6]),
        .O(a_pi_IBUF[6]));
  IBUF \a_pi_IBUF[7]_inst 
       (.I(a_pi[7]),
        .O(a_pi_IBUF[7]));
  IBUF \b_pi_IBUF[0]_inst 
       (.I(b_pi[0]),
        .O(b_pi_IBUF[0]));
  IBUF \b_pi_IBUF[1]_inst 
       (.I(b_pi[1]),
        .O(b_pi_IBUF[1]));
  IBUF \b_pi_IBUF[2]_inst 
       (.I(b_pi[2]),
        .O(b_pi_IBUF[2]));
  IBUF \b_pi_IBUF[3]_inst 
       (.I(b_pi[3]),
        .O(b_pi_IBUF[3]));
  IBUF \b_pi_IBUF[4]_inst 
       (.I(b_pi[4]),
        .O(b_pi_IBUF[4]));
  IBUF \b_pi_IBUF[5]_inst 
       (.I(b_pi[5]),
        .O(b_pi_IBUF[5]));
  IBUF \b_pi_IBUF[6]_inst 
       (.I(b_pi[6]),
        .O(b_pi_IBUF[6]));
  IBUF \b_pi_IBUF[7]_inst 
       (.I(b_pi[7]),
        .O(b_pi_IBUF[7]));
  OBUF \result_po_OBUF[0]_inst 
       (.I(result_po_OBUF[0]),
        .O(result_po[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \result_po_OBUF[0]_inst_i_1 
       (.I0(b_pi_IBUF[0]),
        .I1(a_pi_IBUF[0]),
        .O(result_po_OBUF[0]));
  OBUF \result_po_OBUF[1]_inst 
       (.I(result_po_OBUF[1]),
        .O(result_po[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \result_po_OBUF[1]_inst_i_1 
       (.I0(a_pi_IBUF[0]),
        .I1(b_pi_IBUF[0]),
        .I2(a_pi_IBUF[1]),
        .I3(b_pi_IBUF[1]),
        .O(result_po_OBUF[1]));
  OBUF \result_po_OBUF[2]_inst 
       (.I(result_po_OBUF[2]),
        .O(result_po[2]));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \result_po_OBUF[2]_inst_i_1 
       (.I0(a_pi_IBUF[1]),
        .I1(b_pi_IBUF[1]),
        .I2(a_pi_IBUF[0]),
        .I3(b_pi_IBUF[0]),
        .I4(a_pi_IBUF[2]),
        .I5(b_pi_IBUF[2]),
        .O(result_po_OBUF[2]));
  OBUF \result_po_OBUF[3]_inst 
       (.I(result_po_OBUF[3]),
        .O(result_po[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \result_po_OBUF[3]_inst_i_1 
       (.I0(\result_po_OBUF[4]_inst_i_2_n_0 ),
        .I1(a_pi_IBUF[3]),
        .I2(b_pi_IBUF[3]),
        .O(result_po_OBUF[3]));
  OBUF \result_po_OBUF[4]_inst 
       (.I(result_po_OBUF[4]),
        .O(result_po[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \result_po_OBUF[4]_inst_i_1 
       (.I0(a_pi_IBUF[3]),
        .I1(b_pi_IBUF[3]),
        .I2(\result_po_OBUF[4]_inst_i_2_n_0 ),
        .I3(a_pi_IBUF[4]),
        .I4(b_pi_IBUF[4]),
        .O(result_po_OBUF[4]));
  LUT6 #(
    .INIT(64'hFFFFF880F8800000)) 
    \result_po_OBUF[4]_inst_i_2 
       (.I0(b_pi_IBUF[0]),
        .I1(a_pi_IBUF[0]),
        .I2(b_pi_IBUF[1]),
        .I3(a_pi_IBUF[1]),
        .I4(b_pi_IBUF[2]),
        .I5(a_pi_IBUF[2]),
        .O(\result_po_OBUF[4]_inst_i_2_n_0 ));
  OBUF \result_po_OBUF[5]_inst 
       (.I(result_po_OBUF[5]),
        .O(result_po[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \result_po_OBUF[5]_inst_i_1 
       (.I0(\result_po_OBUF[7]_inst_i_2_n_0 ),
        .I1(a_pi_IBUF[5]),
        .I2(b_pi_IBUF[5]),
        .O(result_po_OBUF[5]));
  OBUF \result_po_OBUF[6]_inst 
       (.I(result_po_OBUF[6]),
        .O(result_po[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \result_po_OBUF[6]_inst_i_1 
       (.I0(a_pi_IBUF[5]),
        .I1(b_pi_IBUF[5]),
        .I2(\result_po_OBUF[7]_inst_i_2_n_0 ),
        .I3(a_pi_IBUF[6]),
        .I4(b_pi_IBUF[6]),
        .O(result_po_OBUF[6]));
  OBUF \result_po_OBUF[7]_inst 
       (.I(result_po_OBUF[7]),
        .O(result_po[7]));
  LUT6 #(
    .INIT(64'h11171777EEE8E888)) 
    \result_po_OBUF[7]_inst_i_1 
       (.I0(a_pi_IBUF[6]),
        .I1(b_pi_IBUF[6]),
        .I2(a_pi_IBUF[5]),
        .I3(b_pi_IBUF[5]),
        .I4(\result_po_OBUF[7]_inst_i_2_n_0 ),
        .I5(\result_po_OBUF[7]_inst_i_3_n_0 ),
        .O(result_po_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFE8E800)) 
    \result_po_OBUF[7]_inst_i_2 
       (.I0(\result_po_OBUF[4]_inst_i_2_n_0 ),
        .I1(b_pi_IBUF[3]),
        .I2(a_pi_IBUF[3]),
        .I3(b_pi_IBUF[4]),
        .I4(a_pi_IBUF[4]),
        .O(\result_po_OBUF[7]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_po_OBUF[7]_inst_i_3 
       (.I0(b_pi_IBUF[7]),
        .I1(a_pi_IBUF[7]),
        .O(\result_po_OBUF[7]_inst_i_3_n_0 ));
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
