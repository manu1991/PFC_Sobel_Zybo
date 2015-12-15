
  set video_clk   [get_clocks -of [get_ports vid_io_in_clk]] 
  set axi_clk     [get_clocks -of [get_ports aclk]] 
 
# video_clk to axi_clk

set_max_delay -from $video_clk -to [all_registers -clock $axi_clk] -datapath_only [get_property -min PERIOD $video_clk]

#  axi_clk to video_clk;

set_max_delay -from $axi_clk -to [all_registers -clock $video_clk] -datapath_only [get_property -min PERIOD $axi_clk]



