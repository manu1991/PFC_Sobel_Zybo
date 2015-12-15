-- (c) Copyright 1995-2015 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:hdmi_rx:1.0
-- IP Revision: 31

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY hdmi_rx_v1_00_a;
USE hdmi_rx_v1_00_a.hdmi_rx;

ENTITY system_hdmi_rx_0_0 IS
  PORT (
    SYSCLK : IN STD_LOGIC;
    BTN : IN STD_LOGIC;
    LED : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    JE : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    VGA_HS : OUT STD_LOGIC;
    VGA_VS : OUT STD_LOGIC;
    VGA_DE : OUT STD_LOGIC;
    VGA_DATA : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
    VGA_R : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    VGA_G : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    VGA_B : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    PXL_CLK : OUT STD_LOGIC;
    PXL_CLK_LOCKED : OUT STD_LOGIC;
    HDMI_OUT_EN : OUT STD_LOGIC;
    HDMI_HPD : OUT STD_LOGIC;
    HDMI_SCL : IN STD_LOGIC;
    HDMI_SDA : INOUT STD_LOGIC;
    HDMI_CLK_P : IN STD_LOGIC;
    HDMI_CLK_N : IN STD_LOGIC;
    HDMI_D_P : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    HDMI_D_N : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
  );
END system_hdmi_rx_0_0;

ARCHITECTURE system_hdmi_rx_0_0_arch OF system_hdmi_rx_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_hdmi_rx_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT hdmi_rx IS
    PORT (
      SYSCLK : IN STD_LOGIC;
      BTN : IN STD_LOGIC;
      LED : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      JE : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      VGA_HS : OUT STD_LOGIC;
      VGA_VS : OUT STD_LOGIC;
      VGA_DE : OUT STD_LOGIC;
      VGA_DATA : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
      VGA_R : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      VGA_G : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
      VGA_B : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      PXL_CLK : OUT STD_LOGIC;
      PXL_CLK_LOCKED : OUT STD_LOGIC;
      HDMI_OUT_EN : OUT STD_LOGIC;
      HDMI_HPD : OUT STD_LOGIC;
      HDMI_SCL : IN STD_LOGIC;
      HDMI_SDA : INOUT STD_LOGIC;
      HDMI_CLK_P : IN STD_LOGIC;
      HDMI_CLK_N : IN STD_LOGIC;
      HDMI_D_P : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      HDMI_D_N : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
  END COMPONENT hdmi_rx;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF system_hdmi_rx_0_0_arch: ARCHITECTURE IS "hdmi_rx,Vivado 2014.4";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF system_hdmi_rx_0_0_arch : ARCHITECTURE IS "system_hdmi_rx_0_0,hdmi_rx,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF system_hdmi_rx_0_0_arch: ARCHITECTURE IS "system_hdmi_rx_0_0,hdmi_rx,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=hdmi_rx,x_ipVersion=1.0,x_ipCoreRevision=31,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF PXL_CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 PXL_signal_clock CLK";
BEGIN
  U0 : hdmi_rx
    PORT MAP (
      SYSCLK => SYSCLK,
      BTN => BTN,
      LED => LED,
      JE => JE,
      VGA_HS => VGA_HS,
      VGA_VS => VGA_VS,
      VGA_DE => VGA_DE,
      VGA_DATA => VGA_DATA,
      VGA_R => VGA_R,
      VGA_G => VGA_G,
      VGA_B => VGA_B,
      PXL_CLK => PXL_CLK,
      PXL_CLK_LOCKED => PXL_CLK_LOCKED,
      HDMI_OUT_EN => HDMI_OUT_EN,
      HDMI_HPD => HDMI_HPD,
      HDMI_SCL => HDMI_SCL,
      HDMI_SDA => HDMI_SDA,
      HDMI_CLK_P => HDMI_CLK_P,
      HDMI_CLK_N => HDMI_CLK_N,
      HDMI_D_P => HDMI_D_P,
      HDMI_D_N => HDMI_D_N
    );
END system_hdmi_rx_0_0_arch;
