
>
Refreshing IP repositories
234*coregenZ19-234h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2T
@c:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/ip2default:defaultZ19-1700h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2020.2/data/ip2default:defaultZ19-2313h px? 
?
?The host OS only allows 260 characters in a normal path. The IP cache path is more than 80 characters. If you experience issues with IP caching, please consider changing the IP cache to a location with a shorter path. Alternately consider using the OS subst command to map part of the path to a drive letter. 
Current IP cache path is %s 2293*coregen2o
[c:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.cache/ip2default:defaultZ19-4995h px? 
?
Command: %s
53*	vivadotcl2O
;synth_design -top FPGA_VendingMachine -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
121762default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 1015.531 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2'
FPGA_VendingMachine2default:default2
 2default:default2?
{C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/FPGA_VendingMachine.v2default:default2
232default:default8@Z8-6157h px? 
R
%s
*synth2:
&	Parameter INSERTING bound to: 2'b00 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter RETURNING bound to: 2'b10 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter COUNTER_MAX bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2
Keyboard2default:default2
 2default:default2?
pC:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/Keyboard.v2default:default2
32default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2#
KeyboardDecoder2default:default2
 2default:default2?
?C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/imports/Keyboard Sample Code/KeyboardDecoder.v2default:default2
12default:default8@Z8-6157h px? 
M
%s
*synth25
!	Parameter INIT bound to: 2'b00 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter WAIT_FOR_SIGNAL bound to: 2'b01 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter GET_SIGNAL_DOWN bound to: 2'b10 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter WAIT_RELEASE bound to: 2'b11 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_INIT bound to: 8'b10101010 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter IS_EXTEND bound to: 8'b11100000 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter IS_BREAK bound to: 8'b11110000 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2"
KeyboardCtrl_02default:default2
 2default:default2?
?C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.runs/synth_1/.Xil/Vivado-4124-DESKTOP-P0B4VES/realtime/KeyboardCtrl_0_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
KeyboardCtrl_02default:default2
 2default:default2
12default:default2
12default:default2?
?C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.runs/synth_1/.Xil/Vivado-4124-DESKTOP-P0B4VES/realtime/KeyboardCtrl_0_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
OnePulse2default:default2
 2default:default2?
?C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/imports/Keyboard Sample Code/OnePulse.v2default:default2
12default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OnePulse2default:default2
 2default:default2
22default:default2
12default:default2?
?C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/imports/Keyboard Sample Code/OnePulse.v2default:default2
12default:default8@Z8-6155h px? 
?
default block is never used226*oasys2?
?C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/imports/Keyboard Sample Code/KeyboardDecoder.v2default:default2
642default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
KeyboardDecoder2default:default2
 2default:default2
32default:default2
12default:default2?
?C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/imports/Keyboard Sample Code/KeyboardDecoder.v2default:default2
12default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Keyboard2default:default2
 2default:default2
42default:default2
12default:default2?
pC:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/Keyboard.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
Debounce_OnePulse2default:default2
 2default:default2?
zC:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/Peripheral_Filters.v2default:default2
322default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
debounce2default:default2
 2default:default2?
zC:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/Peripheral_Filters.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
debounce2default:default2
 2default:default2
52default:default2
12default:default2?
zC:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/Peripheral_Filters.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
onepulse2default:default2
 2default:default2?
zC:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/Peripheral_Filters.v2default:default2
182default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
onepulse2default:default2
 2default:default2
62default:default2
12default:default2?
zC:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/Peripheral_Filters.v2default:default2
182default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
Debounce_OnePulse2default:default2
 2default:default2
72default:default2
12default:default2?
zC:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/Peripheral_Filters.v2default:default2
322default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
Seven_Segment_Display2default:default2
 2default:default2?
{C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/SevenSegmentDisplay.v2default:default2
32default:default8@Z8-6157h px? 
i
%s
*synth2Q
=	Parameter UPDATE_INTERVAL bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
_12default:default2?
{C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/SevenSegmentDisplay.v2default:default2
402default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
_22default:default2?
{C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/SevenSegmentDisplay.v2default:default2
402default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
_32default:default2?
{C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/SevenSegmentDisplay.v2default:default2
402default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
Seven_Segment_Display2default:default2
 2default:default2
82default:default2
12default:default2?
{C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/SevenSegmentDisplay.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
FPGA_VendingMachine2default:default2
 2default:default2
92default:default2
12default:default2?
{C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/sources_1/new/FPGA_VendingMachine.v2default:default2
232default:default8@Z8-6155h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:05 . Memory (MB): peak = 1015.531 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1015.531 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1015.531 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0342default:default2
1015.5312default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.gen/sources_1/ip/KeyboardCtrl_0/KeyboardCtrl_0/KeyboardCtrl_0_in_context.xdc2default:default2*
keyboard/key_de/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.gen/sources_1/ip/KeyboardCtrl_0/KeyboardCtrl_0/KeyboardCtrl_0_in_context.xdc2default:default2*
keyboard/key_de/inst	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2?
?C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/constrs_1/imports/Keyboard Sample Code/KeyboardConstraints.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
?C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/constrs_1/imports/Keyboard Sample Code/KeyboardConstraints.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
?C:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.srcs/constrs_1/imports/Keyboard Sample Code/KeyboardConstraints.xdc2default:default29
%.Xil/FPGA_VendingMachine_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1070.3322default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
1070.3322default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1070.332 ; gain = 54.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1070.332 ; gain = 54.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1070.332 ; gain = 54.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2#
KeyboardDecoder2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
AN_reg2default:default2)
Seven_Segment_Display2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2'
FPGA_VendingMachine2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    INIT |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_         WAIT_FOR_SIGNAL |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_         GET_SIGNAL_DOWN |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_            WAIT_RELEASE |                               11 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2#
KeyboardDecoder2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                             0001 |                             1110
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                             0010 |                             1101
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                             0100 |                             1011
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE2 |                             1000 |                             0111
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
AN_reg2default:default2
one-hot2default:default2)
Seven_Segment_Display2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                                0 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                                1 |                              010
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2'
FPGA_VendingMachine2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1070.332 ; gain = 54.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              512 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 28    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input  512 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 31    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:23 . Memory (MB): peak = 1070.332 ; gain = 54.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB): peak = 1070.332 ; gain = 54.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB): peak = 1070.332 ; gain = 54.801
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 1081.777 ; gain = 66.246
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:33 ; elapsed = 00:00:33 . Memory (MB): peak = 1096.590 ; gain = 81.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:33 ; elapsed = 00:00:33 . Memory (MB): peak = 1096.590 ; gain = 81.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:33 ; elapsed = 00:00:33 . Memory (MB): peak = 1096.590 ; gain = 81.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:33 ; elapsed = 00:00:33 . Memory (MB): peak = 1096.590 ; gain = 81.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1096.590 ; gain = 81.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1096.590 ; gain = 81.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
? 
P
%s
*synth28
$|      |BlackBox name  |Instances |
2default:defaulth p
x
? 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
? 
P
%s
*synth28
$|1     |KeyboardCtrl_0 |         1|
2default:defaulth p
x
? 
P
%s
*synth28
$+------+---------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
J
%s*synth22
+------+-------------+------+
2default:defaulth px? 
J
%s*synth22
|      |Cell         |Count |
2default:defaulth px? 
J
%s*synth22
+------+-------------+------+
2default:defaulth px? 
J
%s*synth22
|1     |KeyboardCtrl |     1|
2default:defaulth px? 
J
%s*synth22
|2     |BUFG         |     1|
2default:defaulth px? 
J
%s*synth22
|3     |CARRY4       |    22|
2default:defaulth px? 
J
%s*synth22
|4     |LUT1         |     2|
2default:defaulth px? 
J
%s*synth22
|5     |LUT2         |    72|
2default:defaulth px? 
J
%s*synth22
|6     |LUT3         |    52|
2default:defaulth px? 
J
%s*synth22
|7     |LUT4         |   567|
2default:defaulth px? 
J
%s*synth22
|8     |LUT5         |    55|
2default:defaulth px? 
J
%s*synth22
|9     |LUT6         |   188|
2default:defaulth px? 
J
%s*synth22
|10    |MUXF7        |    68|
2default:defaulth px? 
J
%s*synth22
|11    |MUXF8        |    33|
2default:defaulth px? 
J
%s*synth22
|12    |FDCE         |   535|
2default:defaulth px? 
J
%s*synth22
|13    |FDRE         |   136|
2default:defaulth px? 
J
%s*synth22
|14    |FDSE         |     1|
2default:defaulth px? 
J
%s*synth22
|15    |IBUF         |     6|
2default:defaulth px? 
J
%s*synth22
|16    |OBUF         |    15|
2default:defaulth px? 
J
%s*synth22
+------+-------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1096.590 ; gain = 81.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:25 ; elapsed = 00:00:31 . Memory (MB): peak = 1096.590 ; gain = 26.258
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:33 ; elapsed = 00:00:34 . Memory (MB): peak = 1096.590 ; gain = 81.059
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0182default:default2
1108.6602default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1232default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1108.6602default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
432default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:392default:default2
00:00:402default:default2
1108.6602default:default2
93.1292default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
wC:/home/github/LogicDesign/Lab5-Advanced/FPGA_Vending_Machine/FPGA_Vending_Machine.runs/synth_1/FPGA_VendingMachine.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
|Executing : report_utilization -file FPGA_VendingMachine_utilization_synth.rpt -pb FPGA_VendingMachine_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Nov 25 17:17:45 20212default:defaultZ17-206h px? 


End Record