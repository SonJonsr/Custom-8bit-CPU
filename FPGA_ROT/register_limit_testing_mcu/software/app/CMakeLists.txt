cmake_minimum_required(VERSION 3.14)

add_subdirectory(../hal_bsp hal_bsp)

include(../hal_bsp/toolchain.cmake)

project(main)

enable_language(ASM)
enable_language(C)
enable_language(CXX)

add_executable(main.elf)

target_sources(main.elf
    PRIVATE
        main.c
)

target_include_directories(main.elf
    PRIVATE
    PUBLIC
)

target_link_libraries(main.elf
    PRIVATE
        -T "${BspLinkerScript}" -nostdlib
        "${ExtraArchiveLibraries}"
        -Wl,--start-group "${BspLibraryName}" -lc -lstdc++ -lgcc -lm -Wl,--end-group
)

# Create objdump from ELF.
set(objdump main.elf.objdump)
add_custom_command(
    OUTPUT "${objdump}"
    DEPENDS main.elf
    COMMAND "${ToolchainObjdump}" "${ToolchainObjdumpFlags}" main.elf >
            "${objdump}"
    COMMENT "Creating ${objdump}."
    VERBATIM
)
add_custom_target(create-objdump ALL DEPENDS "${objdump}")

# Report space free for stack + heap. Note that the file below is never created
# so the report is always output on build.
set(stack_report_file main.elf.stack_report)
add_custom_command(
    OUTPUT "${stack_report_file}"
    DEPENDS main.elf
    COMMAND niosv-stack-report -p "${ToolchainPrefix}" main.elf
    COMMENT "Reporting memory available for stack + heap in main.elf."
    VERBATIM
)
add_custom_target(niosv-stack-report ALL DEPENDS "${stack_report_file}")

# Generate HEX file(s) from main.elf using elf2hex tool.
# Note : If ECC Full is enabled, width of 39 is set for NiosV TCM. Otherwise, 32.
add_custom_command(
    OUTPUT "onchip_memory2_0.hex"
    DEPENDS main.elf
    COMMAND elf2hex main.elf -o onchip_memory2_0.hex -b 0x00000000 -w 32 -e 0x0003FFFF -r 4
    COMMENT "Creating onchip_memory2_0.hex."
    VERBATIM
)
add_custom_target(create-hex ALL DEPENDS "onchip_memory2_0.hex")
