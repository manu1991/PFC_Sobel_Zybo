
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2014.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7z010clg400-1


# CHANGE DESIGN NAME HERE
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}


# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set IIC_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC_0 ]
  set SWs_4Bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 SWs_4Bits ]

  # Create ports
  set BLUE_O [ create_bd_port -dir O -from 4 -to 0 BLUE_O ]
  set GREEN_O [ create_bd_port -dir O -from 5 -to 0 GREEN_O ]
  set HDMI_CLK_N [ create_bd_port -dir I HDMI_CLK_N ]
  set HDMI_CLK_P [ create_bd_port -dir I HDMI_CLK_P ]
  set HDMI_D_N [ create_bd_port -dir I -from 2 -to 0 HDMI_D_N ]
  set HDMI_D_P [ create_bd_port -dir I -from 2 -to 0 HDMI_D_P ]
  set HDMI_HPD [ create_bd_port -dir O HDMI_HPD ]
  set HDMI_OEN [ create_bd_port -dir O HDMI_OEN ]
  set HDMI_SCL [ create_bd_port -dir I HDMI_SCL ]
  set HDMI_SDA_IO [ create_bd_port -dir IO HDMI_SDA_IO ]
  set HSYNC_O [ create_bd_port -dir O HSYNC_O ]
  set RED_O [ create_bd_port -dir O -from 4 -to 0 RED_O ]
  set VSYNC_O [ create_bd_port -dir O VSYNC_O ]

  # Create instance: HDMI_VideoIN_axi4s, and set properties
  set HDMI_VideoIN_axi4s [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_vid_in_axi4s:3.0 HDMI_VideoIN_axi4s ]
  set_property -dict [ list CONFIG.C_M_AXIS_VIDEO_DATA_WIDTH {10} CONFIG.C_M_AXIS_VIDEO_MAX_TDATASMPLS_PER_CLK {1} CONFIG.RAM_ADDR_BITS {11}  ] $HDMI_VideoIN_axi4s

  # Create instance: HIGH, and set properties
  set HIGH [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 HIGH ]

  # Create instance: LOW, and set properties
  set LOW [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 LOW ]
  set_property -dict [ list CONFIG.CONST_VAL {0}  ] $LOW

  # Create instance: RST_NOT, and set properties
  set RST_NOT [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 RST_NOT ]
  set_property -dict [ list CONFIG.C_OPERATION {not} CONFIG.C_SIZE {1}  ] $RST_NOT

  # Create instance: Sws_4Bits, and set properties
  set Sws_4Bits [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 Sws_4Bits ]
  set_property -dict [ list CONFIG.C_ALL_INPUTS {1} CONFIG.C_GPIO_WIDTH {4}  ] $Sws_4Bits

  # Create instance: axi_dispctrl_VGA, and set properties
  set axi_dispctrl_VGA [ create_bd_cell -type ip -vlnv Digilent:digilent:axi_dispctrl:1.0 axi_dispctrl_VGA ]
  set_property -dict [ list CONFIG.C_BLUE_WIDTH {5} CONFIG.C_GREEN_WIDTH {6} CONFIG.C_RED_WIDTH {5}  ] $axi_dispctrl_VGA

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list CONFIG.ENABLE_ADVANCED_OPTIONS {0} CONFIG.M00_HAS_DATA_FIFO {1} CONFIG.NUM_MI {1} CONFIG.NUM_SI {4}  ] $axi_mem_intercon

  # Create instance: axi_protocol_converter_0, and set properties
  set axi_protocol_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_converter_0 ]
  set_property -dict [ list CONFIG.ID_WIDTH {12} CONFIG.MI_PROTOCOL {AXI4LITE} CONFIG.SI_PROTOCOL {AXI3}  ] $axi_protocol_converter_0

  # Create instance: axi_vdma_HDMI, and set properties
  set axi_vdma_HDMI [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_vdma_HDMI ]
  set_property -dict [ list CONFIG.c_enable_debug_all {1} CONFIG.c_enable_debug_info_6 {0} CONFIG.c_enable_debug_info_7 {0} CONFIG.c_enable_debug_info_14 {0} CONFIG.c_enable_debug_info_15 {0} CONFIG.c_include_mm2s {0} CONFIG.c_include_s2mm {1} CONFIG.c_include_s2mm_dre {1} CONFIG.c_m_axi_s2mm_data_width {64} CONFIG.c_s2mm_genlock_mode {2} CONFIG.c_s2mm_linebuffer_depth {2048}  ] $axi_vdma_HDMI

  # Create instance: axi_vdma_HLS, and set properties
  set axi_vdma_HLS [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_vdma_HLS ]
  set_property -dict [ list CONFIG.c_enable_debug_all {1} CONFIG.c_enable_debug_info_6 {0} CONFIG.c_enable_debug_info_7 {0} CONFIG.c_enable_debug_info_14 {0} CONFIG.c_enable_debug_info_15 {0} CONFIG.c_include_mm2s {1} CONFIG.c_include_mm2s_dre {1} CONFIG.c_include_s2mm {1} CONFIG.c_include_s2mm_dre {1} CONFIG.c_m_axi_s2mm_data_width {64} CONFIG.c_mm2s_genlock_mode {3} CONFIG.c_mm2s_linebuffer_depth {2048} CONFIG.c_s2mm_genlock_mode {2} CONFIG.c_s2mm_linebuffer_depth {2048} CONFIG.c_use_mm2s_fsync {0} CONFIG.c_use_s2mm_fsync {0}  ] $axi_vdma_HLS

  # Create instance: axi_vdma_VGA, and set properties
  set axi_vdma_VGA [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vdma:6.2 axi_vdma_VGA ]
  set_property -dict [ list CONFIG.c_enable_debug_all {1} CONFIG.c_enable_debug_info_6 {0} CONFIG.c_enable_debug_info_7 {0} CONFIG.c_enable_debug_info_14 {0} CONFIG.c_enable_debug_info_15 {0} CONFIG.c_include_mm2s_dre {1} CONFIG.c_include_s2mm {0} CONFIG.c_m_axi_mm2s_data_width {64} CONFIG.c_m_axis_mm2s_tdata_width {32} CONFIG.c_mm2s_genlock_mode {1} CONFIG.c_mm2s_linebuffer_depth {2048} CONFIG.c_mm2s_max_burst_length {8} CONFIG.c_use_mm2s_fsync {1}  ] $axi_vdma_VGA

  # Create instance: hdmi_rx, and set properties
  set hdmi_rx [ create_bd_cell -type ip -vlnv xilinx.com:ip:hdmi_rx:1.0 hdmi_rx ]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {650.000000} \
CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.096154} CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {150.000000} \
CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {200.000000} CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} \
CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {108.333336} CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {108.333336} CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {108.333336} CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {50.000000} CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {650.000000} CONFIG.PCW_CLK0_FREQ {100000000} \
CONFIG.PCW_CLK1_FREQ {150000000} CONFIG.PCW_CLK2_FREQ {200000000} \
CONFIG.PCW_CLK3_FREQ {200000000} CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {50.000000} \
CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {1} CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_EN_CLK1_PORT {1} CONFIG.PCW_EN_CLK2_PORT {1} \
CONFIG.PCW_EN_CLK3_PORT {0} CONFIG.PCW_EN_EMIO_I2C0 {1} \
CONFIG.PCW_EN_EMIO_WP_SDIO0 {1} CONFIG.PCW_EN_ENET0 {0} \
CONFIG.PCW_EN_I2C0 {1} CONFIG.PCW_EN_QSPI {1} \
CONFIG.PCW_EN_RST1_PORT {1} CONFIG.PCW_EN_SDIO0 {1} \
CONFIG.PCW_EN_UART1 {1} CONFIG.PCW_EN_USB0 {1} \
CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {DDR PLL} CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK_CLK1_BUF {true} CONFIG.PCW_FCLK_CLK2_BUF {true} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100.000000} CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {150} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {200} CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_FPGA_FCLK1_ENABLE {1} CONFIG.PCW_FPGA_FCLK2_ENABLE {1} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {1} CONFIG.PCW_I2C0_I2C0_IO {EMIO} \
CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {1} CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {108.333336} \
CONFIG.PCW_I2C_RESET_ENABLE {0} CONFIG.PCW_IMPORT_BOARD_PRESET {./lib/xml/ZYBO_zynq_def.xml} \
CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_16_PULLUP {disabled} \
CONFIG.PCW_MIO_16_SLEW {fast} CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_17_PULLUP {disabled} CONFIG.PCW_MIO_17_SLEW {fast} \
CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_18_PULLUP {disabled} \
CONFIG.PCW_MIO_18_SLEW {fast} CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_19_PULLUP {disabled} CONFIG.PCW_MIO_19_SLEW {fast} \
CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_1_PULLUP {disabled} \
CONFIG.PCW_MIO_1_SLEW {fast} CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_20_PULLUP {disabled} CONFIG.PCW_MIO_20_SLEW {fast} \
CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_21_PULLUP {disabled} \
CONFIG.PCW_MIO_21_SLEW {fast} CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_22_PULLUP {disabled} CONFIG.PCW_MIO_22_SLEW {fast} \
CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_23_PULLUP {disabled} \
CONFIG.PCW_MIO_23_SLEW {fast} CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_24_PULLUP {disabled} CONFIG.PCW_MIO_24_SLEW {fast} \
CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_25_PULLUP {disabled} \
CONFIG.PCW_MIO_25_SLEW {fast} CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_26_PULLUP {disabled} CONFIG.PCW_MIO_26_SLEW {fast} \
CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_27_PULLUP {disabled} \
CONFIG.PCW_MIO_27_SLEW {fast} CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_28_PULLUP {disabled} CONFIG.PCW_MIO_28_SLEW {fast} \
CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_29_PULLUP {disabled} \
CONFIG.PCW_MIO_29_SLEW {fast} CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_2_SLEW {fast} CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_30_PULLUP {disabled} CONFIG.PCW_MIO_30_SLEW {fast} \
CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_31_PULLUP {disabled} \
CONFIG.PCW_MIO_31_SLEW {fast} CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_32_PULLUP {disabled} CONFIG.PCW_MIO_32_SLEW {fast} \
CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_33_PULLUP {disabled} \
CONFIG.PCW_MIO_33_SLEW {fast} CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_34_PULLUP {disabled} CONFIG.PCW_MIO_34_SLEW {fast} \
CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_35_PULLUP {disabled} \
CONFIG.PCW_MIO_35_SLEW {fast} CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_36_PULLUP {disabled} CONFIG.PCW_MIO_36_SLEW {fast} \
CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_37_PULLUP {disabled} \
CONFIG.PCW_MIO_37_SLEW {fast} CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_38_PULLUP {disabled} CONFIG.PCW_MIO_38_SLEW {fast} \
CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_39_PULLUP {disabled} \
CONFIG.PCW_MIO_39_SLEW {fast} CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_3_SLEW {fast} CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_40_PULLUP {disabled} CONFIG.PCW_MIO_40_SLEW {fast} \
CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_41_PULLUP {disabled} \
CONFIG.PCW_MIO_41_SLEW {fast} CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_42_PULLUP {disabled} CONFIG.PCW_MIO_42_SLEW {fast} \
CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_43_PULLUP {disabled} \
CONFIG.PCW_MIO_43_SLEW {fast} CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_44_PULLUP {disabled} CONFIG.PCW_MIO_44_SLEW {fast} \
CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_45_PULLUP {disabled} \
CONFIG.PCW_MIO_45_SLEW {fast} CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_47_PULLUP {enabled} CONFIG.PCW_MIO_47_SLEW {slow} \
CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_48_PULLUP {disabled} \
CONFIG.PCW_MIO_48_SLEW {slow} CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_49_PULLUP {disabled} CONFIG.PCW_MIO_49_SLEW {slow} \
CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_4_SLEW {fast} \
CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_52_PULLUP {disabled} \
CONFIG.PCW_MIO_52_SLEW {slow} CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_53_PULLUP {disabled} CONFIG.PCW_MIO_53_SLEW {slow} \
CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_5_SLEW {fast} \
CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_6_SLEW {fast} \
CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} CONFIG.PCW_MIO_8_SLEW {fast} \
CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#Quad SPI Flash#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#USB Reset#SD 0#UART 1#UART 1#GPIO#GPIO#GPIO#GPIO} CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]#qspi0_sclk#gpio[7]#qspi_fbclk#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#gpio[14]#gpio[15]#gpio[16]#gpio[17]#gpio[18]#gpio[19]#gpio[20]#gpio[21]#gpio[22]#gpio[23]#gpio[24]#gpio[25]#gpio[26]#gpio[27]#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#reset#cd#tx#rx#gpio[50]#gpio[51]#gpio[52]#gpio[53]} \
CONFIG.PCW_M_AXI_GP0_FREQMHZ {100} CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.176} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.159} CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.162} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.187} CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.073} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.034} CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.030} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.082} CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {1} \
CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 3.3V} \
CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} CONFIG.PCW_QSPI_GRP_FBCLK_IO {MIO 8} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
CONFIG.PCW_SD0_GRP_CD_ENABLE {1} CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
CONFIG.PCW_SD0_GRP_WP_ENABLE {1} CONFIG.PCW_SD0_GRP_WP_IO {EMIO} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
CONFIG.PCW_S_AXI_HP0_FREQMHZ {150} CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {50} CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {525.000000} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.176} CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.159} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.162} CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.187} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {20.6} CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {165} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {20.6} CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {165} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {20.6} CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {165} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {20.6} CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {165} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {27.85} CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {22.87} CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {22.9} CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {29.9} CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {-0.073} CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {-0.034} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {-0.03} CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {-0.082} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {27} CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {22.8} CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {24} CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {30.45} CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {180} \
CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {525.000000} CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K128M16 JT-125} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_USB0_RESET_ENABLE {1} CONFIG.PCW_USB0_RESET_IO {MIO 46} \
CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} CONFIG.PCW_USE_DMA0 {0} \
CONFIG.PCW_USE_DMA1 {0} CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
CONFIG.PCW_USE_S_AXI_HP0 {1} CONFIG.PCW_USE_S_AXI_HP1 {0} \
 ] $processing_system7_0

  # Create instance: processing_system7_0_axi_periph, and set properties
  set processing_system7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 processing_system7_0_axi_periph ]
  set_property -dict [ list CONFIG.ENABLE_ADVANCED_OPTIONS {0} CONFIG.M00_HAS_REGSLICE {4} CONFIG.M01_HAS_REGSLICE {4} CONFIG.M02_HAS_REGSLICE {4} CONFIG.M03_HAS_REGSLICE {4} CONFIG.M04_HAS_REGSLICE {4} CONFIG.M05_HAS_REGSLICE {4} CONFIG.M06_HAS_REGSLICE {4} CONFIG.M07_HAS_REGSLICE {4} CONFIG.NUM_MI {6} CONFIG.STRATEGY {1}  ] $processing_system7_0_axi_periph

  # Create instance: sobel_0, and set properties
  set sobel_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:sobel:1.0 sobel_0 ]

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list CONFIG.CONST_VAL {0} CONFIG.CONST_WIDTH {6}  ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net HDMI_VideoIN_axi4s_video_out [get_bd_intf_pins HDMI_VideoIN_axi4s/video_out] [get_bd_intf_pins axi_vdma_HDMI/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net S03_AXI_1 [get_bd_intf_pins axi_mem_intercon/S03_AXI] [get_bd_intf_pins axi_vdma_HLS/M_AXI_MM2S]
  connect_bd_intf_net -intf_net Sws_4Bits_GPIO [get_bd_intf_ports SWs_4Bits] [get_bd_intf_pins Sws_4Bits/GPIO]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_mem_intercon/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXIS_MM2S [get_bd_intf_pins axi_dispctrl_VGA/S_AXIS_MM2S] [get_bd_intf_pins axi_vdma_VGA/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_0_M_AXI_MM2S [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins axi_vdma_VGA/M_AXI_MM2S]
  connect_bd_intf_net -intf_net axi_vdma_HDMI1_M_AXI_S2MM [get_bd_intf_pins axi_mem_intercon/S02_AXI] [get_bd_intf_pins axi_vdma_HLS/M_AXI_S2MM]
  connect_bd_intf_net -intf_net axi_vdma_HDMI_M_AXI_S2MM [get_bd_intf_pins axi_mem_intercon/S01_AXI] [get_bd_intf_pins axi_vdma_HDMI/M_AXI_S2MM]
  connect_bd_intf_net -intf_net axi_vdma_HLS_M_AXIS_MM2S [get_bd_intf_pins axi_vdma_HLS/M_AXIS_MM2S] [get_bd_intf_pins sobel_0/INPUT_STREAM]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_IIC_0 [get_bd_intf_ports IIC_0] [get_bd_intf_pins processing_system7_0/IIC_0]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins axi_protocol_converter_0/M_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP1 [get_bd_intf_pins axi_protocol_converter_0/S_AXI] [get_bd_intf_pins processing_system7_0/M_AXI_GP0]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_vdma_VGA/S_AXI_LITE] [get_bd_intf_pins processing_system7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M01_AXI [get_bd_intf_pins Sws_4Bits/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M02_AXI [get_bd_intf_pins axi_vdma_HDMI/S_AXI_LITE] [get_bd_intf_pins processing_system7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M03_AXI [get_bd_intf_pins axi_dispctrl_VGA/S_AXI] [get_bd_intf_pins processing_system7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M04_AXI [get_bd_intf_pins axi_vdma_HLS/S_AXI_LITE] [get_bd_intf_pins processing_system7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_axi_periph_M05_AXI [get_bd_intf_pins processing_system7_0_axi_periph/M05_AXI] [get_bd_intf_pins sobel_0/S_AXI_CONTROL_BUS]
  connect_bd_intf_net -intf_net sobel_0_OUTPUT_STREAM [get_bd_intf_pins axi_vdma_HLS/S_AXIS_S2MM] [get_bd_intf_pins sobel_0/OUTPUT_STREAM]

  # Create port connections
  connect_bd_net -net HDMI_CLK_N_1 [get_bd_ports HDMI_CLK_N] [get_bd_pins hdmi_rx/HDMI_CLK_N]
  connect_bd_net -net HDMI_CLK_P_1 [get_bd_ports HDMI_CLK_P] [get_bd_pins hdmi_rx/HDMI_CLK_P]
  connect_bd_net -net HDMI_D_N_1 [get_bd_ports HDMI_D_N] [get_bd_pins hdmi_rx/HDMI_D_N]
  connect_bd_net -net HDMI_D_P_1 [get_bd_ports HDMI_D_P] [get_bd_pins hdmi_rx/HDMI_D_P]
  connect_bd_net -net HDMI_SCL_1 [get_bd_ports HDMI_SCL] [get_bd_pins hdmi_rx/HDMI_SCL]
  connect_bd_net -net HDMI_VideoIN_axi4s_m_axis_video_tdata [get_bd_pins HDMI_VideoIN_axi4s/m_axis_video_tdata] [get_bd_pins axi_vdma_HDMI/s_axis_s2mm_tdata]
  connect_bd_net -net HDMI_VideoIN_axi4s_m_axis_video_tlast [get_bd_pins HDMI_VideoIN_axi4s/m_axis_video_tlast] [get_bd_pins axi_vdma_HDMI/s_axis_s2mm_tlast]
  connect_bd_net -net HDMI_VideoIN_axi4s_m_axis_video_tuser [get_bd_pins HDMI_VideoIN_axi4s/m_axis_video_tuser] [get_bd_pins axi_vdma_HDMI/s_axis_s2mm_tuser]
  connect_bd_net -net HDMI_VideoIN_axi4s_m_axis_video_tvalid [get_bd_pins HDMI_VideoIN_axi4s/m_axis_video_tvalid] [get_bd_pins axi_vdma_HDMI/s_axis_s2mm_tvalid]
  connect_bd_net -net LOW_dout [get_bd_pins HDMI_VideoIN_axi4s/vid_field_id] [get_bd_pins LOW/dout]
  connect_bd_net -net Net [get_bd_ports HDMI_SDA_IO] [get_bd_pins hdmi_rx/HDMI_SDA]
  connect_bd_net -net axi_dispctrl_0_BLUE_O [get_bd_ports BLUE_O] [get_bd_pins axi_dispctrl_VGA/BLUE_O]
  connect_bd_net -net axi_dispctrl_0_FSYNC_O [get_bd_pins axi_dispctrl_VGA/FSYNC_O] [get_bd_pins axi_vdma_VGA/mm2s_fsync]
  connect_bd_net -net axi_dispctrl_0_GREEN_O [get_bd_ports GREEN_O] [get_bd_pins axi_dispctrl_VGA/GREEN_O]
  connect_bd_net -net axi_dispctrl_0_HSYNC_O [get_bd_ports HSYNC_O] [get_bd_pins axi_dispctrl_VGA/HSYNC_O]
  connect_bd_net -net axi_dispctrl_0_PXL_CLK_O [get_bd_pins HDMI_VideoIN_axi4s/aclk] [get_bd_pins axi_dispctrl_VGA/PXL_CLK_O] [get_bd_pins axi_dispctrl_VGA/s_axis_mm2s_aclk] [get_bd_pins axi_vdma_HDMI/s_axis_s2mm_aclk] [get_bd_pins axi_vdma_VGA/m_axis_mm2s_aclk]
  connect_bd_net -net axi_dispctrl_0_RED_O [get_bd_ports RED_O] [get_bd_pins axi_dispctrl_VGA/RED_O]
  connect_bd_net -net axi_dispctrl_0_VSYNC_O [get_bd_ports VSYNC_O] [get_bd_pins axi_dispctrl_VGA/VSYNC_O]
  connect_bd_net -net axi_dispctrl_VGA_s_axis_mm2s_tready [get_bd_pins axi_dispctrl_VGA/s_axis_mm2s_tready] [get_bd_pins axi_vdma_VGA/m_axis_mm2s_tready]
  connect_bd_net -net axi_vdma_0_m_axis_mm2s_tkeep [get_bd_pins axi_dispctrl_VGA/s_axis_mm2s_tstrb] [get_bd_pins axi_vdma_VGA/m_axis_mm2s_tkeep]
  connect_bd_net -net axi_vdma_HDMI_s_axis_s2mm_tready [get_bd_pins HDMI_VideoIN_axi4s/m_axis_video_tready] [get_bd_pins axi_vdma_HDMI/s_axis_s2mm_tready]
  connect_bd_net -net axi_vdma_HLS_m_axis_mm2s_tdata [get_bd_pins axi_vdma_HLS/m_axis_mm2s_tdata] [get_bd_pins sobel_0/INPUT_STREAM_TDATA]
  connect_bd_net -net axi_vdma_HLS_m_axis_mm2s_tkeep [get_bd_pins axi_vdma_HLS/m_axis_mm2s_tkeep] [get_bd_pins sobel_0/INPUT_STREAM_TKEEP]
  connect_bd_net -net axi_vdma_HLS_m_axis_mm2s_tlast [get_bd_pins axi_vdma_HLS/m_axis_mm2s_tlast] [get_bd_pins sobel_0/INPUT_STREAM_TLAST]
  connect_bd_net -net axi_vdma_HLS_m_axis_mm2s_tuser [get_bd_pins axi_vdma_HLS/m_axis_mm2s_tuser] [get_bd_pins sobel_0/INPUT_STREAM_TUSER]
  connect_bd_net -net axi_vdma_HLS_m_axis_mm2s_tvalid [get_bd_pins axi_vdma_HLS/m_axis_mm2s_tvalid] [get_bd_pins sobel_0/INPUT_STREAM_TVALID]
  connect_bd_net -net axi_vdma_HLS_s_axis_s2mm_tready [get_bd_pins axi_vdma_HLS/s_axis_s2mm_tready] [get_bd_pins sobel_0/OUTPUT_STREAM_TREADY]
  connect_bd_net -net axi_vdma_VGA_m_axis_mm2s_tdata [get_bd_pins axi_dispctrl_VGA/s_axis_mm2s_tdata] [get_bd_pins axi_vdma_VGA/m_axis_mm2s_tdata]
  connect_bd_net -net axi_vdma_VGA_m_axis_mm2s_tlast [get_bd_pins axi_dispctrl_VGA/s_axis_mm2s_tlast] [get_bd_pins axi_vdma_VGA/m_axis_mm2s_tlast]
  connect_bd_net -net axi_vdma_VGA_m_axis_mm2s_tvalid [get_bd_pins axi_dispctrl_VGA/s_axis_mm2s_tvalid] [get_bd_pins axi_vdma_VGA/m_axis_mm2s_tvalid]
  connect_bd_net -net hdmi_rx_0_HDMI_HPD [get_bd_ports HDMI_HPD] [get_bd_pins hdmi_rx/HDMI_HPD]
  connect_bd_net -net hdmi_rx_0_PXL_CLK [get_bd_pins HDMI_VideoIN_axi4s/vid_io_in_clk] [get_bd_pins hdmi_rx/PXL_CLK]
  connect_bd_net -net hdmi_rx_0_VGA_DATA [get_bd_pins HDMI_VideoIN_axi4s/vid_data] [get_bd_pins hdmi_rx/VGA_DATA]
  connect_bd_net -net hdmi_rx_HDMI_OUT_EN [get_bd_ports HDMI_OEN] [get_bd_pins hdmi_rx/HDMI_OUT_EN]
  connect_bd_net -net hdmi_rx_VGA_DE [get_bd_pins HDMI_VideoIN_axi4s/vid_active_video] [get_bd_pins hdmi_rx/VGA_DE]
  connect_bd_net -net hdmi_rx_VGA_HS [get_bd_pins HDMI_VideoIN_axi4s/vid_hsync] [get_bd_pins hdmi_rx/VGA_HS]
  connect_bd_net -net hdmi_rx_VGA_VS [get_bd_pins HDMI_VideoIN_axi4s/vid_vsync] [get_bd_pins hdmi_rx/VGA_VS]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins Sws_4Bits/s_axi_aclk] [get_bd_pins axi_dispctrl_VGA/REF_CLK_I] [get_bd_pins axi_dispctrl_VGA/s_axi_aclk] [get_bd_pins axi_protocol_converter_0/aclk] [get_bd_pins axi_vdma_HDMI/s_axi_lite_aclk] [get_bd_pins axi_vdma_HLS/m_axis_mm2s_aclk] [get_bd_pins axi_vdma_HLS/s_axi_lite_aclk] [get_bd_pins axi_vdma_HLS/s_axis_s2mm_aclk] [get_bd_pins axi_vdma_VGA/s_axi_lite_aclk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins processing_system7_0_axi_periph/ACLK] [get_bd_pins processing_system7_0_axi_periph/M00_ACLK] [get_bd_pins processing_system7_0_axi_periph/M01_ACLK] [get_bd_pins processing_system7_0_axi_periph/M02_ACLK] [get_bd_pins processing_system7_0_axi_periph/M03_ACLK] [get_bd_pins processing_system7_0_axi_periph/M04_ACLK] [get_bd_pins processing_system7_0_axi_periph/M05_ACLK] [get_bd_pins processing_system7_0_axi_periph/S00_ACLK] [get_bd_pins sobel_0/aclk]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK] [get_bd_pins axi_mem_intercon/S02_ACLK] [get_bd_pins axi_mem_intercon/S03_ACLK] [get_bd_pins axi_vdma_HDMI/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_HLS/m_axi_mm2s_aclk] [get_bd_pins axi_vdma_HLS/m_axi_s2mm_aclk] [get_bd_pins axi_vdma_VGA/m_axi_mm2s_aclk] [get_bd_pins processing_system7_0/FCLK_CLK1] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK]
  connect_bd_net -net processing_system7_0_FCLK_CLK2 [get_bd_pins hdmi_rx/SYSCLK] [get_bd_pins processing_system7_0/FCLK_CLK2]
  connect_bd_net -net rst_processing_system7_0_97M_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins axi_protocol_converter_0/aresetn] [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins processing_system7_0_axi_periph/ARESETN]
  connect_bd_net -net rst_processing_system7_0_97M_peripheral_aresetn [get_bd_pins RST_NOT/Op1] [get_bd_pins Sws_4Bits/s_axi_aresetn] [get_bd_pins axi_dispctrl_VGA/s_axi_aresetn] [get_bd_pins axi_dispctrl_VGA/s_axis_mm2s_aresetn] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN] [get_bd_pins axi_mem_intercon/S02_ARESETN] [get_bd_pins axi_mem_intercon/S03_ARESETN] [get_bd_pins axi_vdma_HDMI/axi_resetn] [get_bd_pins axi_vdma_HLS/axi_resetn] [get_bd_pins axi_vdma_VGA/axi_resetn] [get_bd_pins processing_system7_0/FCLK_RESET1_N] [get_bd_pins processing_system7_0_axi_periph/M00_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M01_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M02_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M03_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M04_ARESETN] [get_bd_pins processing_system7_0_axi_periph/M05_ARESETN] [get_bd_pins processing_system7_0_axi_periph/S00_ARESETN] [get_bd_pins sobel_0/aresetn]
  connect_bd_net -net sobel_0_INPUT_STREAM_TREADY [get_bd_pins axi_vdma_HLS/m_axis_mm2s_tready] [get_bd_pins sobel_0/INPUT_STREAM_TREADY]
  connect_bd_net -net sobel_0_OUTPUT_STREAM_TDATA [get_bd_pins axi_vdma_HLS/s_axis_s2mm_tdata] [get_bd_pins sobel_0/OUTPUT_STREAM_TDATA]
  connect_bd_net -net sobel_0_OUTPUT_STREAM_TKEEP [get_bd_pins axi_vdma_HLS/s_axis_s2mm_tkeep] [get_bd_pins sobel_0/OUTPUT_STREAM_TKEEP]
  connect_bd_net -net sobel_0_OUTPUT_STREAM_TLAST [get_bd_pins axi_vdma_HLS/s_axis_s2mm_tlast] [get_bd_pins sobel_0/OUTPUT_STREAM_TLAST]
  connect_bd_net -net sobel_0_OUTPUT_STREAM_TUSER [get_bd_pins axi_vdma_HLS/s_axis_s2mm_tuser] [get_bd_pins sobel_0/OUTPUT_STREAM_TUSER]
  connect_bd_net -net sobel_0_OUTPUT_STREAM_TVALID [get_bd_pins axi_vdma_HLS/s_axis_s2mm_tvalid] [get_bd_pins sobel_0/OUTPUT_STREAM_TVALID]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins HDMI_VideoIN_axi4s/rst] [get_bd_pins RST_NOT/Res]
  connect_bd_net -net xlconstant_0_const1 [get_bd_pins axi_vdma_HDMI/s2mm_frame_ptr_in] [get_bd_pins axi_vdma_VGA/mm2s_frame_ptr_in] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins HDMI_VideoIN_axi4s/aclken] [get_bd_pins HDMI_VideoIN_axi4s/aresetn] [get_bd_pins HDMI_VideoIN_axi4s/axis_enable] [get_bd_pins HDMI_VideoIN_axi4s/vid_io_in_ce] [get_bd_pins HIGH/dout]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_vdma_HDMI/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_vdma_HLS/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_vdma_HLS/Data_S2MM] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x0 [get_bd_addr_spaces axi_vdma_VGA/Data_MM2S] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x10000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs Sws_4Bits/S_AXI/Reg] SEG_Sws_4Bits_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_dispctrl_VGA/S_AXI/S_AXI_reg] SEG_axi_dispctrl_0_S_AXI_reg
  create_bd_addr_seg -range 0x10000 -offset 0x43000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_VGA/S_AXI_LITE/Reg] SEG_axi_vdma_0_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43010000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_HDMI/S_AXI_LITE/Reg] SEG_axi_vdma_1_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43020000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_vdma_HLS/S_AXI_LITE/Reg] SEG_axi_vdma_HLS_Reg
  create_bd_addr_seg -range 0x10000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs sobel_0/S_AXI_CONTROL_BUS/Reg] SEG_sobel_0_Reg
  

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


