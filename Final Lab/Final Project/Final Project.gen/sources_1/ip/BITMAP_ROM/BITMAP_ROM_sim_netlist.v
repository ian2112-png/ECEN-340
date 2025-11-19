// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Nov 19 11:47:22 2025
// Host        : 25STC151L19 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/slricks340/Desktop/ECEN 340 Seth Ricks Ian
//               Fleming/ECEN-340/Final Lab/Final Project/Final
//               Project.gen/sources_1/ip/BITMAP_ROM/BITMAP_ROM_sim_netlist.v}
// Design      : BITMAP_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "BITMAP_ROM,blk_mem_gen_v8_4_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_9,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module BITMAP_ROM
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;

  wire [6:0]addra;
  wire clka;
  wire [127:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [127:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [127:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     12.7408 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "BITMAP_ROM.mem" *) 
  (* C_INIT_FILE_NAME = "BITMAP_ROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "128" *) 
  (* C_READ_WIDTH_B = "128" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "128" *) 
  (* C_WRITE_WIDTH_B = "128" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  BITMAP_ROM_blk_mem_gen_v8_4_9 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[127:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[127:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
FPXllyX2NFs/RMngGqZy2bLYbZr92CdofeZrJOHklWXExpaPgHNYp2Lzm4MnflbnrfSkCmLwwKT5
zfRgEip7FKQ5Zhb73p0MAIADixBZ/ZRt4hQkJL0T9brm0waLHfanjnov2aCX6jN3LbQc3ujmDga6
Dd73k78u4xjRTDv1/P4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kr7VKKvChFoiyRCReag+OvU3jnmG9pN0cv+BxhNmMKLthg/ksgNZyU3L+fQ7cmIQELtlUjwjkBAP
Jjq5RsCnHbJxj+Ys1GNhriiBsxLqxWCP8onhAVvgZN2xZFOih0UWpqlU8NVP8Eww1ohvkDgxTstC
3kDmYehxIUJjqCC/mgRZmuezqugrFdubYmBoz16tUvD17iA5qqCIMS9xSIXYp2LBNekmWEwrVqzu
R4koEo4UlXl/CEw0XY3QvMoHnlXgu6N/6sc+nxZtKSwjiMVvGnZE9UVvJPAC3Hn3zKFGlK53mmGO
Tj0dWzhwX0ahSYzkyJC/HLdbGZmriL2UNvDyFw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CaLc9FGt3AdRHfNtGAsGFY/QEvHY1Vv4TvvgCDsdDMqiuDeLizFJDJeskBWjeKDoE2cufK8TxiBq
mySRQNJoeOKnxTiDdf+Rx6m0iR6h/YeswegYwgghpM5KVrl6mSwF3+4yEovPM7a+9ArDQ5vl+WT8
SilNGzyW0KnTwe7+szs=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cEnudSW1X71p0Xuq6jrXOxHnBku87IA0RA3zKqmeZHZM0r+9rEm5MSzX8RecnQ994yiqeyxbIH2l
fGEzUzr0ZzryS3fkf2LnJuB39f2YARW9eVCSiaeWaraZuY1l89T+h3vgdlurS/1LIraYLS1MyOXa
6F1LAcQp3W4OO4ctc3q1FRMZGldRS1biMsKwJ8Lxj8NEOm67UfgFrJNQAxbVXEfbWRWhKtwNxcTB
JbgC8j4EHkIA46mzoHloeBAL6KieplQUBjKXSSTb66rxglbFhWLy+mirROHcocu9J4ZbvTRYZEww
4lso1lqAllVLAoKYqa3WImZuSRoTbGDngBt9Lg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rOyI+x4PlmKcVSFoN3oKgSYpVlmYxc194Ej04il/YmBg10xopy4zmtu5sdCP/uGSNYcNGWeAiw01
mNf98KyNgTUFXruHCA38qjhhEIvl4vfWWn3W3mFRxrIuwmnreT6qTvgMaxIkCdVBDP7Iy7O6WmCf
3Va5X5hnCHhtXgX5UYniBHiLjmupv63B8XMAYDH2n6mQ3H0DF7mtb7psBafd0Z6+IWUbmzwMtKrf
ZrRJBGAhNT0i1KrEjEh/rWjN7Z7N32zQ+Pl1kc5gYCQIX5McfdTdqSaRVXZ/HF90ymS7/8d5LDyj
Er+ORdcjnOn6oAyY4PuUUl4OYUHv5k+RglTe5Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bJa7kPSpDipzoJoQu1APEjc8vFLqBfQZK/grZvWijD7/FgMTerFCWLUY6n8DWeGdvjXvTeyrqCHE
2rP/H57wUqPC8tIJlGm6ZYQGjZ3TgYqLrJshDE5zYMTO//q0vuSraWvZP7A7SLuW6y7tFE/nplpx
L8gbYORx6j70okGUwnamCMS9yhFr7Z2QTJne1k4GNFGvy66URk3k5cBPl5j4/1yc4xGV+aWYl6L8
q8RorRU/CltObHKrji/jdiY1WtdGrkpRyCEFc+XNPazL9xSLLu5bz6XlvKwoks+8a5KYT/VFUovM
JbM0bpAXM8Z7rGaPuXjqXtZBg5praTZLu/WNcA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PYKBDinOGc/kIVdFzXrz2wA4/QNFxLDrQfTWfR5TjYE6bm49vrZi0bawcr9HXp4OP1+XxPLB3oCP
oV5e/rYeDln531ebt8yEg27XCoSHEX4FU8oG8aBJ8fqgWayOnAMJt025WodOxuZXbhT1zPo7J3uh
6iO9Mv7RtYE2fZ1W+G8oN//FTOEJYPWlKYnt0cDeZrN3I4rHHptZHuu7l8T+df0PYea3x6U3Mvkl
ojZ+TwQtdu0NuYY5j3QNgx3+W2XYq1M773FAnEz/deW54EjE+jf1jjrBk2pl8SYxeKuutS15oPVF
eHdqXYVcJxoUY5JH8z04lITKEnZ4oq6sYS6dog==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
tl+2vFCWZ583gQGsVC7oopz2NCKBiJ9uOHYBGzJZheOHJMqI/ehNvo25l710eBx00tztXzM30AH6
ZhAJg+kJwE2jO0MV5fmG5dnwXmLqoGEJMBs7xwWxvYK7w/0z9M0AJKD7HnuC+IiLhNU/fIxyuE+I
+vWqp//RcfY0tMMp2I2J1yEW6GUahS1ve/4JchssZ7Xu7VthoSDWXMQWATbvsUsDzeSo2+Ruz8Kq
Dc05HqEU8NgBxDPPEKLCcdKLp4byglwj7iCAtCjsPy8P18qjgb2sycFjNgmaiNMMB51WqeD+hneG
hLOue9bqVdEojkrb3q4WbsGZKz0bAGsryxslOlYHP1b8vey3yI2ixA80wyERe8d3GRIeZiSxGykH
qWxsE6x/iyi8QRb5mXZPMApA+Fln8tYmn7+1rFCm8gF4gJWhr1PsSJqTi658symGrzT0Ghjvf2QL
SvvoaeNdy0pOsWs7jLBFndd4GiFA+9K6Y33sziLToU9EvvFokENIslod

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oYiCujFRj1F3wKsGZlHR9niEtR9MLXEVAVfy+f/3xrmpW6Ye5a+fBCvm4TH+iRQefGHNdMPnzTNW
K/pEPAS9uMJjOdFiu+APT+LYrSRnEg4W0dX5buSDGM6LBWAuMseoTMjbJJoYDGLRckJgW43E30mX
ej4823nkbfwc+Ecbrup825qLyv8RTQLNHafvJA5lSapdqXwnlOIYRmcHn+sfAh5pGv9kW9aokcdh
ObR2XYxX99rYloyvz3x0pmjxD5ILW4SQMB1IUEuuyqX6eb5IQ+kZ41hjvsHIuQH29vzpCfV9Jqha
WC5yxxK1R+cleZSKD1H1gVzbTei8uFs/91Bgeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
urNc+S8AFPj+GVFdqJE5V7P8O6QI6MA3nkwYb8NKbYbVufnXKg6voJIRYYeYr7EOa8mrqirozWbY
Lln9SLWnkaAy2LvL/N6WahoQdCt++4RH+xe768XvSrVUFPrIwZRixqMLurc/tPov4i5P/ukZKl18
ZPZvXRzUNlvCZnMPcF+5QCQihqPbjcZ0YyGgWgX/ipTGG3sNqmylGN7qLa4Rgqu/mB5a2xVyu5Wc
911+/X3VVFx697WVaP5V0SbOzYN8R8+8B8kdznwixMA+f4lSbBXyRysVOSzYjo8bKEMqyKMVBQn9
xDmEuV0DvVWXdO7VPvWA1LuJFwS07OxeI2GCcQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcP7fsLZxaDrG29e9HQeXfu2TsKsdyW7Yc1vWct6lbmDEfXkWMU1fFWSPIjPzRc9UOnfEu0bRn+B
D+8MWokqes3WF7txljBmgUPiNGZ8arUU6ENa/IY/Wv7iaB/ZKM5PtdnFAkjDIrYyKFCTz/U6Yzwi
hBGGarK/wYQOLzeeKRewiPTiNUL7tztWuMZ1t1msxD951EeKrwjrjcXIIuf/TzrOGUOlWgjHlnrl
4Q/lfMAnRLBNTSWG+5wWewCE8jK2X/gJ5AV4p3x1WP3+JglbxpP39l3pzedXqciZPbuz2XlFnRPV
KByaUaAShzJ56p8+0HjWebibqQdieGNPiPWW0Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51472)
`pragma protect data_block
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
8Q==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
