

Command: %s
53*	vivadotcl2N
:synth_design -top Maquina_de_Estados -part xc7a35tcpg236-12default:defaultZ4-113h px? 
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
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 346.109 ; gain = 100.570
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2&
Maquina_de_Estados2default:default2?
?C:/Users/AC Tecnologia/Documents/Projetos VHDL/Vivado 2017.4/TestesClocks/TestesClocks.srcs/sources_1/imports/new/Maquina_de_Estados.vhd2default:default2
452default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
clk_25s2default:default2?
?C:/Users/AC Tecnologia/Documents/Projetos VHDL/Vivado 2017.4/TestesClocks/TestesClocks.srcs/sources_1/imports/new/Maquina_de_Estados.vhd2default:default2
1192default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
clk_5s2default:default2?
?C:/Users/AC Tecnologia/Documents/Projetos VHDL/Vivado 2017.4/TestesClocks/TestesClocks.srcs/sources_1/imports/new/Maquina_de_Estados.vhd2default:default2
1192default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2&
Maquina_de_Estados2default:default2
12default:default2
12default:default2?
?C:/Users/AC Tecnologia/Documents/Projetos VHDL/Vivado 2017.4/TestesClocks/TestesClocks.srcs/sources_1/imports/new/Maquina_de_Estados.vhd2default:default2
452default:default8@Z8-256h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 398.508 ; gain = 152.969
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 398.508 ; gain = 152.969
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2?
?C:/Users/AC Tecnologia/Documents/Projetos VHDL/Vivado 2017.4/TestesClocks/TestesClocks.srcs/constrs_1/imports/Vivado 2017.4/Basys3_Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
?C:/Users/AC Tecnologia/Documents/Projetos VHDL/Vivado 2017.4/TestesClocks/TestesClocks.srcs/constrs_1/imports/Vivado 2017.4/Basys3_Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
?C:/Users/AC Tecnologia/Documents/Projetos VHDL/Vivado 2017.4/TestesClocks/TestesClocks.srcs/constrs_1/imports/Vivado 2017.4/Basys3_Master.xdc2default:default28
$.Xil/Maquina_de_Estados_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
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
00:00:00.0042default:default2
731.8202default:default2
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
~Finished Constraint Validation : Time (s): cpu = 00:00:37 ; elapsed = 00:00:42 . Memory (MB): peak = 731.820 ; gain = 486.281
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:37 ; elapsed = 00:00:42 . Memory (MB): peak = 731.820 ; gain = 486.281
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:37 ; elapsed = 00:00:42 . Memory (MB): peak = 731.820 ; gain = 486.281
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	counter252default:default2
312default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
clk_5s2default:default2
292default:default2
252default:defaultZ8-5545h px? 
?
!inferring latch for variable '%s'327*oasys2

cState_reg2default:default2?
?C:/Users/AC Tecnologia/Documents/Projetos VHDL/Vivado 2017.4/TestesClocks/TestesClocks.srcs/sources_1/imports/new/Maquina_de_Estados.vhd2default:default2
982default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
sClk_reg2default:default2?
?C:/Users/AC Tecnologia/Documents/Projetos VHDL/Vivado 2017.4/TestesClocks/TestesClocks.srcs/sources_1/imports/new/Maquina_de_Estados.vhd2default:default2
1282default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:38 ; elapsed = 00:00:42 . Memory (MB): peak = 731.820 ; gain = 486.281
2default:defaulth px? 
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

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
Z
%s
*synth2B
.	   2 Input     31 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     29 Bit       Adders := 1     
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
.	               31 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               29 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
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
Z
%s
*synth2B
.	   2 Input     31 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 9     
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
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
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
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
G
%s
*synth2/
Module Maquina_de_Estados 
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
Z
%s
*synth2B
.	   2 Input     31 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     29 Bit       Adders := 1     
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
.	               31 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               29 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
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
Z
%s
*synth2B
.	   2 Input     31 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     29 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 9     
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
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
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
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
clk_5s2default:default2
292default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	counter252default:default2
312default:default2
252default:defaultZ8-5545h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
sClk_reg2default:default2&
Maquina_de_Estados2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:40 ; elapsed = 00:00:45 . Memory (MB): peak = 731.820 ; gain = 486.281
2default:defaulth px? 
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

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:59 ; elapsed = 00:01:04 . Memory (MB): peak = 731.820 ; gain = 486.281
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
|Finished Timing Optimization : Time (s): cpu = 00:01:00 ; elapsed = 00:01:04 . Memory (MB): peak = 750.031 ; gain = 504.492
2default:defaulth px? 
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

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
{Finished Technology Mapping : Time (s): cpu = 00:01:00 ; elapsed = 00:01:05 . Memory (MB): peak = 755.961 ; gain = 510.422
2default:defaulth px? 
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

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
uFinished IO Insertion : Time (s): cpu = 00:01:02 ; elapsed = 00:01:06 . Memory (MB): peak = 755.961 ; gain = 510.422
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:01:02 ; elapsed = 00:01:06 . Memory (MB): peak = 755.961 ; gain = 510.422
2default:defaulth px? 
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

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:02 ; elapsed = 00:01:06 . Memory (MB): peak = 755.961 ; gain = 510.422
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:01:02 ; elapsed = 00:01:06 . Memory (MB): peak = 755.961 ; gain = 510.422
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:01:02 ; elapsed = 00:01:07 . Memory (MB): peak = 755.961 ; gain = 510.422
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:01:02 ; elapsed = 00:01:07 . Memory (MB): peak = 755.961 ; gain = 510.422
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
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    23|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     2|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |     7|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |     1|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    52|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |    36|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |     7|
2default:defaulth px? 
D
%s*synth2,
|9     |FDRE   |    92|
2default:defaulth px? 
D
%s*synth2,
|10    |FDSE   |     1|
2default:defaulth px? 
D
%s*synth2,
|11    |LD     |     2|
2default:defaulth px? 
D
%s*synth2,
|12    |IBUF   |     2|
2default:defaulth px? 
D
%s*synth2,
|13    |OBUF   |     6|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
? 
N
%s
*synth26
"|1     |top      |       |   232|
2default:defaulth p
x
? 
N
%s
*synth26
"+------+---------+-------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:01:02 ; elapsed = 00:01:07 . Memory (MB): peak = 755.961 ; gain = 510.422
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
FSynthesis finished with 0 errors, 0 critical warnings and 3 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:36 ; elapsed = 00:00:52 . Memory (MB): peak = 755.961 ; gain = 177.109
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:01:02 ; elapsed = 00:01:07 . Memory (MB): peak = 755.961 ; gain = 510.422
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
272default:defaultZ29-17h px? 
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
?
!Unisim Transformation Summary:
%s111*project2Y
E  A total of 2 instances were transformed.
  LD => LDCE: 2 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
182default:default2
52default:default2
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
00:01:052default:default2
00:01:122default:default2
755.9612default:default2
523.5822default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
zC:/Users/AC Tecnologia/Documents/Projetos VHDL/Vivado 2017.4/TestesClocks/TestesClocks.runs/synth_1/Maquina_de_Estados.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
zExecuting : report_utilization -file Maquina_de_Estados_utilization_synth.rpt -pb Maquina_de_Estados_utilization_synth.pb
2default:defaulth px? 
?
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.040 . Memory (MB): peak = 755.961 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Sep 22 09:14:25 20222default:defaultZ17-206h px? 


End Record