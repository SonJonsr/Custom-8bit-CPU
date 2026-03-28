cmake_minimum_required(VERSION 3.14)

add_subdirectory(../hal_bsp hal_bsp)

include(../hal_bsp/toolchain.cmake)

project(hallo)

enable_language(ASM)
enable_language(C)
enable_language(CXX)

add_executable(hallo.elf)

target_sources(hallo.elf
    PRIVATE
        hallo.c
)

target_include_directories(hallo.elf
    PRIVATE
    PUBLIC
)

target_link_libraries(hallo.elf
    PRIVATE
        -T "${BspLinkerScript}" -nostdlib
        "${ExtraArchiveLibraries}"
        -Wl,--start-group "${BspLibraryName}" -lc -lstdc++ -lgcc -lm -Wl,--end-group
)

# Create objdump from ELF.
set(objdump hallo.elf.objdump)
add_custom_command(
    OUTPUT "${objdump}"
    DEPENDS hallo.elf
    COMMAND "${ToolchainObjdump}" "${ToolchainObjdumpFlags}" hallo.elf >
            "${objdump}"
    COMMENT "Creating ${objdump}."
    VERBATIM
)
add_custom_target(create-objdump ALL DEPENDS "${objdump}")

# Report space free for stack + heap. Note that the file below is never created
# so the report is always output on build.
set(stack_report_file hallo.elf.stack_report)
add_custom_command(
    OUTPUT "${stack_report_file}"
    DEPENDS hallo.elf
    COMMAND niosv-stack-report -p "${ToolchainPrefix}" hallo.elf
    COMMENT "Reporting memory available for stack + heap in hallo.elf."
    VERBATIM
)
add_custom_target(niosv-stack-report ALL DEPENDS "${stack_report_file}")

# Generate HEX file(s) from hallo.elf using elf2hex tool.
# Note : If ECC Full is enabled, width of 39 is set for NiosV TCM. Otherwise, 32.
add_custom_command(
    OUTPUT "ram.hex"
    DEPENDS hallo.elf
    COMMAND elf2hex hallo.elf -o ram.hex -b 0x00000000 -w 32 -e 0x0003FFFF -r 4
    COMMENT "Creating ram.hex."
    VERBATIM
)
add_custom_target(create-hex ALL DEPENDS "ram.hex")
