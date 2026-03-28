/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'thinker' in SOPC Builder design 'unsaved'
 * SOPC Builder design path: /home/kaladin/Custom-8bit-CPU/FPGA_ROT/register_testbenk_mcu/unsaved.sopcinfo
 *
 * Generated: Sun Mar 15 16:21:29 CET 2026
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "intel_niosv_m"
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_DATA_ADDR_WIDTH 0x20
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HAS_CSR_SUPPORT 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x20
#define ALT_CPU_INT_MODE 0
#define ALT_CPU_MTIME_OFFSET 0x00050040
#define ALT_CPU_NAME "thinker"
#define ALT_CPU_NIOSV_CORE_VARIANT 1
#define ALT_CPU_NUM_GPR 32
#define ALT_CPU_RESET_ADDR 0x00000000
#define ALT_CPU_TICKS_PER_SEC NIOSV_INTERNAL_TIMER_TICKS_PER_SECOND
#define ALT_CPU_TIMER_DEVICE_TYPE 2


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define ABBOTTSLAKE_CPU_FREQ 50000000u
#define ABBOTTSLAKE_DATA_ADDR_WIDTH 0x20
#define ABBOTTSLAKE_DCACHE_LINE_SIZE 0
#define ABBOTTSLAKE_DCACHE_LINE_SIZE_LOG2 0
#define ABBOTTSLAKE_DCACHE_SIZE 0
#define ABBOTTSLAKE_HAS_CSR_SUPPORT 1
#define ABBOTTSLAKE_HAS_DEBUG_STUB
#define ABBOTTSLAKE_ICACHE_LINE_SIZE 0
#define ABBOTTSLAKE_ICACHE_LINE_SIZE_LOG2 0
#define ABBOTTSLAKE_ICACHE_SIZE 0
#define ABBOTTSLAKE_INST_ADDR_WIDTH 0x20
#define ABBOTTSLAKE_INT_MODE 0
#define ABBOTTSLAKE_MTIME_OFFSET 0x00050040
#define ABBOTTSLAKE_NIOSV_CORE_VARIANT 1
#define ABBOTTSLAKE_NUM_GPR 32
#define ABBOTTSLAKE_RESET_ADDR 0x00000000
#define ABBOTTSLAKE_TICKS_PER_SEC NIOSV_INTERNAL_TIMER_TICKS_PER_SECOND
#define ABBOTTSLAKE_TIMER_DEVICE_TYPE 2


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __INTEL_NIOSV_M
#define __REGISTER_TESTBENK_COMPONENT


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone IV E"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag"
#define ALT_STDERR_BASE 0x50000
#define ALT_STDERR_DEV jtag
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag"
#define ALT_STDIN_BASE 0x50000
#define ALT_STDIN_DEV jtag
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag"
#define ALT_STDOUT_BASE 0x50000
#define ALT_STDOUT_DEV jtag
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "unsaved"
#define ALT_SYS_CLK_TICKS_PER_SEC ALT_CPU_TICKS_PER_SEC
#define ALT_TIMESTAMP_CLK_TIMER_DEVICE_TYPE ALT_CPU_TIMER_DEVICE_TYPE


/*
 * hal2 configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK THINKER
#define ALT_TIMESTAMP_CLK THINKER
#define INTEL_FPGA_DFL_START_ADDRESS 0xffffffffffffffff
#define INTEL_FPGA_USE_DFL_WALKER 0


/*
 * intel_niosv_m_hal_driver configuration
 *
 */

#define NIOSV_INTERNAL_TIMER_TICKS_PER_SECOND 1000


/*
 * jtag configuration
 *
 */

#define ALT_MODULE_CLASS_jtag altera_avalon_jtag_uart
#define JTAG_BASE 0x50000
#define JTAG_IRQ 0
#define JTAG_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_NAME "/dev/jtag"
#define JTAG_READ_DEPTH 64
#define JTAG_READ_THRESHOLD 8
#define JTAG_SPAN 8
#define JTAG_TYPE "altera_avalon_jtag_uart"
#define JTAG_WRITE_DEPTH 64
#define JTAG_WRITE_THRESHOLD 8


/*
 * ram configuration
 *
 */

#define ALT_MODULE_CLASS_ram altera_avalon_onchip_memory2
#define RAM_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define RAM_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define RAM_BASE 0x0
#define RAM_CONTENTS_INFO ""
#define RAM_DUAL_PORT 0
#define RAM_GUI_RAM_BLOCK_TYPE "AUTO"
#define RAM_INIT_CONTENTS_FILE "unsaved_ram"
#define RAM_INIT_MEM_CONTENT 1
#define RAM_INSTANCE_ID "NONE"
#define RAM_IRQ -1
#define RAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define RAM_NAME "/dev/ram"
#define RAM_NON_DEFAULT_INIT_FILE_ENABLED 0
#define RAM_RAM_BLOCK_TYPE "AUTO"
#define RAM_READ_DURING_WRITE_MODE "DONT_CARE"
#define RAM_SINGLE_CLOCK_OP 0
#define RAM_SIZE_MULTIPLE 1
#define RAM_SIZE_VALUE 262144
#define RAM_SPAN 262144
#define RAM_TYPE "altera_avalon_onchip_memory2"
#define RAM_WRITABLE 1


/*
 * reg_test_comp configuration
 *
 */

#define ALT_MODULE_CLASS_reg_test_comp register_testbenk_component
#define REG_TEST_COMP_BASE 0x50008
#define REG_TEST_COMP_IRQ -1
#define REG_TEST_COMP_IRQ_INTERRUPT_CONTROLLER_ID -1
#define REG_TEST_COMP_NAME "/dev/reg_test_comp"
#define REG_TEST_COMP_SPAN 4
#define REG_TEST_COMP_TYPE "register_testbenk_component"


/*
 * thinker_dm_agent configuration
 *
 */

#define ALT_MODULE_CLASS_thinker_dm_agent intel_niosv_m
#define THINKER_DM_AGENT_BASE 0x40000
#define THINKER_DM_AGENT_CPU_FREQ 50000000u
#define THINKER_DM_AGENT_DATA_ADDR_WIDTH 0x20
#define THINKER_DM_AGENT_DCACHE_LINE_SIZE 0
#define THINKER_DM_AGENT_DCACHE_LINE_SIZE_LOG2 0
#define THINKER_DM_AGENT_DCACHE_SIZE 0
#define THINKER_DM_AGENT_HAS_CSR_SUPPORT 1
#define THINKER_DM_AGENT_HAS_DEBUG_STUB
#define THINKER_DM_AGENT_ICACHE_LINE_SIZE 0
#define THINKER_DM_AGENT_ICACHE_LINE_SIZE_LOG2 0
#define THINKER_DM_AGENT_ICACHE_SIZE 0
#define THINKER_DM_AGENT_INST_ADDR_WIDTH 0x20
#define THINKER_DM_AGENT_INTERRUPT_CONTROLLER_ID 0
#define THINKER_DM_AGENT_INT_MODE 0
#define THINKER_DM_AGENT_IRQ -1
#define THINKER_DM_AGENT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define THINKER_DM_AGENT_MTIME_OFFSET 0x00050040
#define THINKER_DM_AGENT_NAME "/dev/thinker_dm_agent"
#define THINKER_DM_AGENT_NIOSV_CORE_VARIANT 1
#define THINKER_DM_AGENT_NUM_GPR 32
#define THINKER_DM_AGENT_RESET_ADDR 0x00000000
#define THINKER_DM_AGENT_SPAN 65536
#define THINKER_DM_AGENT_TICKS_PER_SEC NIOSV_INTERNAL_TIMER_TICKS_PER_SECOND
#define THINKER_DM_AGENT_TIMER_DEVICE_TYPE 2
#define THINKER_DM_AGENT_TYPE "intel_niosv_m"


/*
 * thinker_timer_sw_agent configuration
 *
 */

#define ALT_MODULE_CLASS_thinker_timer_sw_agent intel_niosv_m
#define THINKER_TIMER_SW_AGENT_BASE 0x50040
#define THINKER_TIMER_SW_AGENT_CPU_FREQ 50000000u
#define THINKER_TIMER_SW_AGENT_DATA_ADDR_WIDTH 0x20
#define THINKER_TIMER_SW_AGENT_DCACHE_LINE_SIZE 0
#define THINKER_TIMER_SW_AGENT_DCACHE_LINE_SIZE_LOG2 0
#define THINKER_TIMER_SW_AGENT_DCACHE_SIZE 0
#define THINKER_TIMER_SW_AGENT_HAS_CSR_SUPPORT 1
#define THINKER_TIMER_SW_AGENT_HAS_DEBUG_STUB
#define THINKER_TIMER_SW_AGENT_ICACHE_LINE_SIZE 0
#define THINKER_TIMER_SW_AGENT_ICACHE_LINE_SIZE_LOG2 0
#define THINKER_TIMER_SW_AGENT_ICACHE_SIZE 0
#define THINKER_TIMER_SW_AGENT_INST_ADDR_WIDTH 0x20
#define THINKER_TIMER_SW_AGENT_INTERRUPT_CONTROLLER_ID 0
#define THINKER_TIMER_SW_AGENT_INT_MODE 0
#define THINKER_TIMER_SW_AGENT_IRQ -1
#define THINKER_TIMER_SW_AGENT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define THINKER_TIMER_SW_AGENT_MTIME_OFFSET 0x00050040
#define THINKER_TIMER_SW_AGENT_NAME "/dev/thinker_timer_sw_agent"
#define THINKER_TIMER_SW_AGENT_NIOSV_CORE_VARIANT 1
#define THINKER_TIMER_SW_AGENT_NUM_GPR 32
#define THINKER_TIMER_SW_AGENT_RESET_ADDR 0x00000000
#define THINKER_TIMER_SW_AGENT_SPAN 64
#define THINKER_TIMER_SW_AGENT_TICKS_PER_SEC NIOSV_INTERNAL_TIMER_TICKS_PER_SECOND
#define THINKER_TIMER_SW_AGENT_TIMER_DEVICE_TYPE 2
#define THINKER_TIMER_SW_AGENT_TYPE "intel_niosv_m"

#endif /* __SYSTEM_H_ */
