
v
Command: %s
53*	vivadotcl2E
1synth_design -top top_level -part xc7a35tcpg236-32default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
IP '%s' is locked:
%s
1260*coregen2 
frame_buffer2default:default2?
?* IP definition 'Block Memory Generator (8.4)' for IP 'frame_buffer' (customized with software release 2017.3) has a different revision in the IP Catalog.2default:defaultZ19-2162h px?
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
xc7a35tcpg236-32default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
77322default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:05 . Memory (MB): peak = 1018.273 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
	top_level2default:default2?
wD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/top_level.vhd2default:default2
362default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
clocking2default:default2?
zD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/clocking.vhd2default:default2
752default:default2&
your_instance_name2default:default2
clocking2default:default2?
wD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/top_level.vhd2default:default2
1652default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
clocking2default:default2?
zD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/clocking.vhd2default:default2
852default:default8@Z8-638h px? 
g
%s
*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IBUF_LOW_PWR bound to: 1 - type: bool 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2

clkin1_buf2default:default2
IBUFG2default:default2?
zD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/clocking.vhd2default:default2
1192default:default8@Z8-113h px? 
e
%s
*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter CLKFBOUT_MULT_F bound to: 10.000000 - type: double 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter CLKFBOUT_USE_FINE_PS bound to: 0 - type: bool 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter CLKIN1_PERIOD bound to: 10.000000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKIN2_PERIOD bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter CLKOUT0_DIVIDE_F bound to: 20.000000 - type: double 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CLKOUT0_USE_FINE_PS bound to: 0 - type: bool 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter CLKOUT1_DIVIDE bound to: 40 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT1_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CLKOUT1_USE_FINE_PS bound to: 0 - type: bool 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT2_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT2_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CLKOUT2_USE_FINE_PS bound to: 0 - type: bool 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT3_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT3_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT3_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CLKOUT3_USE_FINE_PS bound to: 0 - type: bool 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter CLKOUT4_CASCADE bound to: 0 - type: bool 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT4_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT4_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT4_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CLKOUT4_USE_FINE_PS bound to: 0 - type: bool 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT5_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT5_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT5_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CLKOUT5_USE_FINE_PS bound to: 0 - type: bool 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT6_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT6_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT6_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CLKOUT6_USE_FINE_PS bound to: 0 - type: bool 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter COMPENSATION bound to: ZHOLD - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter IS_CLKINSEL_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter IS_PSEN_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter IS_PSINCDEC_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter IS_PWRDWN_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter IS_RST_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter REF_JITTER1 bound to: 0.010000 - type: double 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter REF_JITTER2 bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SS_EN bound to: FALSE - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter SS_MODE bound to: CENTER_HIGH - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter SS_MOD_PERIOD bound to: 10000 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter STARTUP_WAIT bound to: 0 - type: bool 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2!
mmcm_adv_inst2default:default2

MMCME2_ADV2default:default2?
zD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/clocking.vhd2default:default2
1302default:default8@Z8-113h px? 
?
,binding component instance '%s' to cell '%s'113*oasys2
clkf_buf2default:default2
BUFG2default:default2?
zD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/clocking.vhd2default:default2
1932default:default8@Z8-113h px? 
?
,binding component instance '%s' to cell '%s'113*oasys2
clkout1_buf2default:default2
BUFG2default:default2?
zD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/clocking.vhd2default:default2
1992default:default8@Z8-113h px? 
?
,binding component instance '%s' to cell '%s'113*oasys2
clkout2_buf2default:default2
BUFG2default:default2?
zD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/clocking.vhd2default:default2
2062default:default8@Z8-113h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
clocking2default:default2
12default:default2
12default:default2?
zD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/clocking.vhd2default:default2
852default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
VGA2default:default2?
qD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/vga.vhd2default:default2
102default:default2
Inst_VGA2default:default2
VGA2default:default2?
wD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/top_level.vhd2default:default2
1752default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
VGA2default:default2?
qD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/vga.vhd2default:default2
212default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
VGA2default:default2
22default:default2
12default:default2?
qD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/vga.vhd2default:default2
212default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
debounce2default:default2?
vD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/debounce.vhd2default:default2
112default:default2!
Inst_debounce2default:default2
debounce2default:default2?
wD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/top_level.vhd2default:default2
1872default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
debounce2default:default2?
vD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/debounce.vhd2default:default2
172default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
debounce2default:default2
32default:default2
12default:default2?
vD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/debounce.vhd2default:default2
172default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2%
ov7670_controller2default:default2?
D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/ov7670_controller.vhd2default:default2
112default:default2*
Inst_ov7670_controller2default:default2%
ov7670_controller2default:default2?
wD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/top_level.vhd2default:default2
1932default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2%
ov7670_controller2default:default2?
D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/ov7670_controller.vhd2default:default2
232default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

i2c_sender2default:default2?
|D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/i2c_sender.vhd2default:default2
112default:default2#
Inst_i2c_sender2default:default2

i2c_sender2default:default2?
D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/ov7670_controller.vhd2default:default2
582default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

i2c_sender2default:default2?
|D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/i2c_sender.vhd2default:default2
222default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

i2c_sender2default:default2
42default:default2
12default:default2?
|D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/i2c_sender.vhd2default:default2
222default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
ov7670_registers2default:default2?
?D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/ov7670_registers.vhd2default:default2
122default:default2)
Inst_ov7670_registers2default:default2$
ov7670_registers2default:default2?
D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/ov7670_controller.vhd2default:default2
732default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2$
ov7670_registers2default:default2?
?D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/ov7670_registers.vhd2default:default2
202default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2$
ov7670_registers2default:default2
52default:default2
12default:default2?
?D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/basys3_ov7670/ov7670_registers.vhd2default:default2
202default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2%
ov7670_controller2default:default2
62default:default2
12default:default2?
D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/ov7670_controller.vhd2default:default2
232default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
frame_buffer2default:default2?
?D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.runs/synth_1/.Xil/Vivado-19248-TACO-SUGO-KAWAII/realtime/frame_buffer_stub.v2default:default2
62default:default2%
Inst_frame_buffer2default:default2 
frame_buffer2default:default2?
wD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/top_level.vhd2default:default2
2152default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2 
frame_buffer2default:default2
 2default:default2?
?D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.runs/synth_1/.Xil/Vivado-19248-TACO-SUGO-KAWAII/realtime/frame_buffer_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
frame_buffer2default:default2
 2default:default2
72default:default2
12default:default2?
?D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.runs/synth_1/.Xil/Vivado-19248-TACO-SUGO-KAWAII/realtime/frame_buffer_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
ov7670_capture2default:default2?
|D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/ov7670_capture.vhd2default:default2
172default:default2'
Inst_ov7670_capture2default:default2"
ov7670_capture2default:default2?
wD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/top_level.vhd2default:default2
2262default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2"
ov7670_capture2default:default2?
|D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/ov7670_capture.vhd2default:default2
292default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
ov7670_capture2default:default2
82default:default2
12default:default2?
|D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/ov7670_capture.vhd2default:default2
292default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RGB2default:default2?
qD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/RGB.vhd2default:default2
82default:default2
Inst_RGB2default:default2
RGB2default:default2?
wD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/top_level.vhd2default:default2
2382default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
RGB2default:default2?
qD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/RGB.vhd2default:default2
152default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
RGB2default:default2
92default:default2
12default:default2?
qD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/RGB.vhd2default:default2
152default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2%
Address_Generator2default:default2?
D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/address_Generator.vhd2default:default2
82default:default2*
Inst_Address_Generator2default:default2%
Address_Generator2default:default2?
wD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/top_level.vhd2default:default2
2462default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2%
Address_Generator2default:default2?
D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/address_Generator.vhd2default:default2
162default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2%
Address_Generator2default:default2
102default:default2
12default:default2?
D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/address_Generator.vhd2default:default2
162default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	top_level2default:default2
112default:default2
12default:default2?
wD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/sources_1/imports/ov7670_fr/top_level.vhd2default:default2
362default:default8@Z8-256h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1018.273 ; gain = 0.000
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1018.273 ; gain = 0.000
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1018.273 ; gain = 0.000
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
00:00:00.0072default:default2
1018.2732default:default2
0.0002default:defaultZ17-268h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
22default:defaultZ29-17h px? 
?
?The IBUFG primitive '%s' has been retargeted to an IBUF primitive only. No BUFG will be added. If a global buffer is intended, please instantiate an available global clock primitive from the current architecture.437*netlist21
your_instance_name/clkin1_buf2default:defaultZ29-432h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
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
?D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.runs/synth_1/.Xil/Vivado-19248-TACO-SUGO-KAWAII/frame_buffer/frame_buffer/frame_buffer_in_context.xdc2default:default2'
Inst_frame_buffer	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?D:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.runs/synth_1/.Xil/Vivado-19248-TACO-SUGO-KAWAII/frame_buffer/frame_buffer/frame_buffer_in_context.xdc2default:default2'
Inst_frame_buffer	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2?
rD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/constrs_1/imports/new/basys3_xdc.xdc2default:default8Z20-179h px? 
?
No nets matched '%s'.
507*	planAhead2$
ov7670_pclk_IBUF2default:default2?
rD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/constrs_1/imports/new/basys3_xdc.xdc2default:default2
992default:default8@Z12-507h px?
?
Finished Parsing XDC File [%s]
178*designutils2?
rD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/constrs_1/imports/new/basys3_xdc.xdc2default:default8Z20-178h px? 
?
?One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2?
rD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/constrs_1/imports/new/basys3_xdc.xdc2default:default2/
.Xil/top_level_propImpl.xdc2default:defaultZ1-498h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
rD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.srcs/constrs_1/imports/new/basys3_xdc.xdc2default:default2/
.Xil/top_level_propImpl.xdc2default:defaultZ1-236h px? 
8
Deriving generated clocks
2*timingZ38-2h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1065.2422default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2\
H  A total of 1 instances were transformed.
  IBUFG => IBUF: 1 instance 
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
1065.2422default:default2
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
~Finished Constraint Validation : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1065.242 ; gain = 46.969
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
Loading part: xc7a35tcpg236-3
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1065.242 ; gain = 46.969
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1065.242 ; gain = 46.969
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
iRegister %s driving address of a ROM cannot be packed in BRAM/URAM because of presence of initial value.
4359*oasys2#
address_reg_rep2default:defaultZ8-6040h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
line_reg2default:default2"
ov7670_capture2default:defaultZ8-802h px? 
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
_                 iSTATE0 |                             0001 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                             0010 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE2 |                             0100 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                             1000 |                               11
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
line_reg2default:default2
one-hot2default:default2"
ov7670_capture2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1065.242 ; gain = 46.969
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
,	   2 Input   10 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 4     
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
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
? 
8
%s
*synth2 
+---ROMs : 
2default:defaulth p
x
? 
P
%s
*synth28
$	                    ROMs := 1     
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
,	   2 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   17 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    2 Bit        Muxes := 1     
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
,	   2 Input    1 Bit        Muxes := 13    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 3     
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
?
iRegister %s driving address of a ROM cannot be packed in BRAM/URAM because of presence of initial value.
4359*oasys2T
@Inst_ov7670_controller/Inst_ov7670_registers/address_reg_rep_rep2default:defaultZ8-6040h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1065.242 ; gain = 46.969
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
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
M
%s*synth25
!
ROM: Preliminary Mapping	Report
2default:defaulth px? 
?
%s*synth2|
h+------------+-------------------------------------------------------+---------------+----------------+
2default:defaulth px? 
?
%s*synth2}
i|Module Name | RTL Object                                            | Depth x Width | Implemented As | 
2default:defaulth px? 
?
%s*synth2|
h+------------+-------------------------------------------------------+---------------+----------------+
2default:defaulth px? 
?
%s*synth2}
i|top_level   | Inst_ov7670_controller/Inst_ov7670_registers/sreg_reg | 256x16        | Block RAM      | 
2default:defaulth px? 
?
%s*synth2}
i+------------+-------------------------------------------------------+---------------+----------------+

2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1065.242 ; gain = 46.969
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
|Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 1065.242 ; gain = 46.969
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
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2I
5Inst_ov7670_controller/Inst_ov7670_registers/sreg_reg2default:default2
Block2default:defaultZ8-7052h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 1070.352 ; gain = 52.078
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
uFinished IO Insertion : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1070.352 ; gain = 52.078
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1070.352 ; gain = 52.078
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1070.352 ; gain = 52.078
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1070.352 ; gain = 52.078
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1070.352 ; gain = 52.078
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1070.352 ; gain = 52.078
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
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |frame_buffer  |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
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
|1     |frame_buffer |     1|
2default:defaulth px? 
J
%s*synth22
|2     |BUFG         |     4|
2default:defaulth px? 
J
%s*synth22
|3     |CARRY4       |    21|
2default:defaulth px? 
J
%s*synth22
|4     |LUT1         |    18|
2default:defaulth px? 
J
%s*synth22
|5     |LUT2         |    36|
2default:defaulth px? 
J
%s*synth22
|6     |LUT3         |    62|
2default:defaulth px? 
J
%s*synth22
|7     |LUT4         |    52|
2default:defaulth px? 
J
%s*synth22
|8     |LUT5         |    14|
2default:defaulth px? 
J
%s*synth22
|9     |LUT6         |    34|
2default:defaulth px? 
J
%s*synth22
|10    |MMCME2_ADV   |     1|
2default:defaulth px? 
J
%s*synth22
|11    |RAMB18E1     |     1|
2default:defaulth px? 
J
%s*synth22
|12    |FDRE         |   204|
2default:defaulth px? 
J
%s*synth22
|13    |FDSE         |     2|
2default:defaulth px? 
J
%s*synth22
|14    |IBUF         |    14|
2default:defaulth px? 
J
%s*synth22
|15    |IBUFG        |     1|
2default:defaulth px? 
J
%s*synth22
|16    |OBUF         |    19|
2default:defaulth px? 
J
%s*synth22
|17    |OBUFT        |     1|
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1070.352 ; gain = 52.078
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
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:19 ; elapsed = 00:00:25 . Memory (MB): peak = 1070.352 ; gain = 5.109
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1070.352 ; gain = 52.078
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
00:00:00.0062default:default2
1070.3522default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
242default:defaultZ29-17h px? 
?
?The IBUFG primitive '%s' has been retargeted to an IBUF primitive only. No BUFG will be added. If a global buffer is intended, please instantiate an available global clock primitive from the current architecture.437*netlist21
your_instance_name/clkin1_buf2default:defaultZ29-432h px? 
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
00:00:002default:default2
1083.5662default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2\
H  A total of 1 instances were transformed.
  IBUFG => IBUF: 1 instance 
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
592default:default2
62default:default2
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
00:00:332default:default2
00:00:352default:default2
1083.5662default:default2
65.2932default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2w
cD:/LogicDesignExperiment/final_project/basys3_ov7670_v1/basys3_ov7670_v1.runs/synth_1/top_level.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2|
hExecuting : report_utilization -file top_level_utilization_synth.rpt -pb top_level_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Jan 14 02:09:13 20222default:defaultZ17-206h px? 


End Record