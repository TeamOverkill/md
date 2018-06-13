cmake_minimum_required(VERSION 3.10)
project(md)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wall")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -Wall")

SET(GCC_COVERAGE_COMPILE_FLAGS_RELEASE "-O3 -march=native -pipe")
SET(GCC_COVERAGE_LINK_FLAGS_RELEASE    "-O3")

SET(GCC_COVERAGE_COMPILE_FLAGS_DEBUG "-O0")
SET(GCC_COVERAGE_LINK_FLAGS_DEBUG    "-O0")

SET( CMAKE_CXX_FLAGS_DEBUG  "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_COMPILE_FLAGS_DEBUG}" )
SET( CMAKE_EXE_LINKER_FLAGS_DEBUG  "${CMAKE_EXE_LINKER_FLAGS} ${GCC_COVERAGE_LINK_FLAGS_DEBUG}" )

SET( CMAKE_CXX_FLAGS_RELEASE  "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_COMPILE_FLAGS_RELEASE}" )
SET( CMAKE_EXE_LINKER_FLAGS_RELEASE  "${CMAKE_EXE_LINKER_FLAGS} ${GCC_COVERAGE_LINK_FLAGS_RELEASE}" )
include_directories(.)

add_executable(md
        atom.cpp
        atom.h
        base.h
        energy.h
        frame.cpp
        frame.h
        integrators.h
        main.cpp
        mdEngine.h
        ran_uniform.c
        ran_uniform.h)
