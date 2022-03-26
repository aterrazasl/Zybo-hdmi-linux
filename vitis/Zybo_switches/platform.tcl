# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/aterrazasl/Zybo/Zybo-hdmi-linux/vitis/Zybo_switches/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/aterrazasl/Zybo/Zybo-hdmi-linux/vitis/Zybo_switches/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Zybo_switches}\
-hw {/home/aterrazasl/Zybo/Zybo-hdmi-linux/vivado/Test_Switches/design_1_wrapper.xsa}\
-out {/home/aterrazasl/Zybo/Zybo-hdmi-linux/vitis}

platform write
domain create -name {linux_ps7_cortexa9} -display-name {linux_ps7_cortexa9} -os {linux} -proc {ps7_cortexa9} -runtime {cpp} -arch {32-bit} -support-app {linux_hello_world}
platform active {Zybo_switches}
domain active {zynq_fsbl}
domain active {linux_ps7_cortexa9}
platform generate -quick
platform generate
