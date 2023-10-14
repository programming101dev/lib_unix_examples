cmake_minimum_required(VERSION 3.10)
project(p101_unix_examples
        VERSION 0.0.1
        DESCRIPTION ""
        LANGUAGES C)

message(STATUS "Compiler being used: ${CMAKE_C_COMPILER}")

add_subdirectory(arpa)
add_subdirectory(err)
add_subdirectory(execinfo)
add_subdirectory(fstab)
add_subdirectory(getopt)
add_subdirectory(ifaddr)
add_subdirectory(net)
add_subdirectory(stdlib)
add_subdirectory(sys)
add_subdirectory(ttyent)
