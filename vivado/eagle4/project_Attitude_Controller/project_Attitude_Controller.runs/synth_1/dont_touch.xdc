# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# Block Designs: bd/ARM_1/ARM_1.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ARM_1 || ORIG_REF_NAME==ARM_1}]

# IP: bd/ARM_1/ip/ARM_1_processing_system7_0_0/ARM_1_processing_system7_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ARM_1_processing_system7_0_0 || ORIG_REF_NAME==ARM_1_processing_system7_0_0}]

# IP: bd/ARM_1/ip/ARM_1_axi_gpio_0_0/ARM_1_axi_gpio_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ARM_1_axi_gpio_0_0 || ORIG_REF_NAME==ARM_1_axi_gpio_0_0}]

# IP: bd/ARM_1/ip/ARM_1_axi_gpio_1_0/ARM_1_axi_gpio_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ARM_1_axi_gpio_1_0 || ORIG_REF_NAME==ARM_1_axi_gpio_1_0}]

# IP: bd/ARM_1/ip/ARM_1_processing_system7_0_axi_periph_0/ARM_1_processing_system7_0_axi_periph_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ARM_1_processing_system7_0_axi_periph_0 || ORIG_REF_NAME==ARM_1_processing_system7_0_axi_periph_0}]

# IP: bd/ARM_1/ip/ARM_1_rst_processing_system7_0_100M_0/ARM_1_rst_processing_system7_0_100M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ARM_1_rst_processing_system7_0_100M_0 || ORIG_REF_NAME==ARM_1_rst_processing_system7_0_100M_0}]

# IP: bd/ARM_1/ip/ARM_1_xbar_0/ARM_1_xbar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ARM_1_xbar_0 || ORIG_REF_NAME==ARM_1_xbar_0}]

# IP: bd/ARM_1/ip/ARM_1_auto_pc_0/ARM_1_auto_pc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==ARM_1_auto_pc_0 || ORIG_REF_NAME==ARM_1_auto_pc_0}]

# XDC: bd/ARM_1/ip/ARM_1_processing_system7_0_0/ARM_1_processing_system7_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ARM_1_processing_system7_0_0 || ORIG_REF_NAME==ARM_1_processing_system7_0_0}] {/inst }]/inst ]]

# XDC: bd/ARM_1/ip/ARM_1_axi_gpio_0_0/ARM_1_axi_gpio_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ARM_1_axi_gpio_0_0 || ORIG_REF_NAME==ARM_1_axi_gpio_0_0}] {/U0 }]/U0 ]]

# XDC: bd/ARM_1/ip/ARM_1_axi_gpio_0_0/ARM_1_axi_gpio_0_0_ooc.xdc

# XDC: bd/ARM_1/ip/ARM_1_axi_gpio_0_0/ARM_1_axi_gpio_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ARM_1_axi_gpio_0_0 || ORIG_REF_NAME==ARM_1_axi_gpio_0_0}] {/U0 }]/U0 ]]

# XDC: bd/ARM_1/ip/ARM_1_axi_gpio_1_0/ARM_1_axi_gpio_1_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ARM_1_axi_gpio_1_0 || ORIG_REF_NAME==ARM_1_axi_gpio_1_0}] {/U0 }]/U0 ]]

# XDC: bd/ARM_1/ip/ARM_1_axi_gpio_1_0/ARM_1_axi_gpio_1_0_ooc.xdc

# XDC: bd/ARM_1/ip/ARM_1_axi_gpio_1_0/ARM_1_axi_gpio_1_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ARM_1_axi_gpio_1_0 || ORIG_REF_NAME==ARM_1_axi_gpio_1_0}] {/U0 }]/U0 ]]

# XDC: bd/ARM_1/ip/ARM_1_rst_processing_system7_0_100M_0/ARM_1_rst_processing_system7_0_100M_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ARM_1_rst_processing_system7_0_100M_0 || ORIG_REF_NAME==ARM_1_rst_processing_system7_0_100M_0}] {/U0 }]/U0 ]]

# XDC: bd/ARM_1/ip/ARM_1_rst_processing_system7_0_100M_0/ARM_1_rst_processing_system7_0_100M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==ARM_1_rst_processing_system7_0_100M_0 || ORIG_REF_NAME==ARM_1_rst_processing_system7_0_100M_0}] {/U0 }]/U0 ]]

# XDC: bd/ARM_1/ip/ARM_1_rst_processing_system7_0_100M_0/ARM_1_rst_processing_system7_0_100M_0_ooc.xdc

# XDC: bd/ARM_1/ip/ARM_1_xbar_0/ARM_1_xbar_0_ooc.xdc

# XDC: bd/ARM_1/ip/ARM_1_auto_pc_0/ARM_1_auto_pc_0_ooc.xdc

# XDC: bd/ARM_1/ARM_1_ooc.xdc