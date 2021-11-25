# Clock signal

#7 segment display

#set_property PACKAGE_PIN V7 [get_ports dp]
#set_property IOSTANDARD LVCMOS33 [get_ports dp]



#Buttons

#USB HID (PS/2)
set_property PACKAGE_PIN C17 [get_ports PS2_CLK]
set_property IOSTANDARD LVCMOS33 [get_ports PS2_CLK]
set_property PULLUP true [get_ports PS2_CLK]
set_property PACKAGE_PIN B17 [get_ports PS2_DATA]
set_property IOSTANDARD LVCMOS33 [get_ports PS2_DATA]
set_property PULLUP true [get_ports PS2_DATA]


set_property IOSTANDARD LVCMOS33 [get_ports {_7SEG[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {_7SEG[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {_7SEG[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {_7SEG[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {_7SEG[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {_7SEG[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {_7SEG[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {AN[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[2]}]
set_property PACKAGE_PIN W4 [get_ports {AN[3]}]
set_property PACKAGE_PIN V4 [get_ports {AN[2]}]
set_property PACKAGE_PIN U4 [get_ports {AN[1]}]
set_property PACKAGE_PIN U2 [get_ports {AN[0]}]
set_property PACKAGE_PIN W7 [get_ports {_7SEG[6]}]
set_property PACKAGE_PIN W6 [get_ports {_7SEG[5]}]
set_property PACKAGE_PIN U8 [get_ports {_7SEG[4]}]
set_property PACKAGE_PIN V8 [get_ports {_7SEG[3]}]
set_property PACKAGE_PIN U5 [get_ports {_7SEG[2]}]
set_property PACKAGE_PIN V5 [get_ports {_7SEG[1]}]
set_property PACKAGE_PIN U7 [get_ports {_7SEG[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports CANCEL]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports INSERT_5]
set_property IOSTANDARD LVCMOS33 [get_ports INSERT_10]
set_property IOSTANDARD LVCMOS33 [get_ports INSERT_50]
set_property IOSTANDARD LVCMOS33 [get_ports RESET]
set_property PACKAGE_PIN T18 [get_ports RESET]
set_property PACKAGE_PIN W19 [get_ports INSERT_5]
set_property PACKAGE_PIN U18 [get_ports INSERT_10]
set_property PACKAGE_PIN T17 [get_ports INSERT_50]
set_property PACKAGE_PIN U17 [get_ports CANCEL]
set_property PACKAGE_PIN W5 [get_ports CLK]

set_property IOSTANDARD LVCMOS33 [get_ports {LEDS[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LEDS[0]}]
set_property PACKAGE_PIN V19 [get_ports {LEDS[3]}]
set_property PACKAGE_PIN U19 [get_ports {LEDS[2]}]
set_property PACKAGE_PIN E19 [get_ports {LEDS[1]}]
set_property PACKAGE_PIN U16 [get_ports {LEDS[0]}]
