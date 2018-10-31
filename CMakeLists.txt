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

SET(CMAKE_Fortran_CREATE_STATIC_LIBRARY  "lib ${CMAKE_CL_NOLOGO} <LINK_FLAGS> /out:<TARGET> <OBJECTS> ")

#set(CMAKE_CXX_FLAGS "-o ran2.o")

include_directories(.)

add_library(random ran2.f)

add_executable(md
        atom.cpp
        atom.h
        atoms.cpp
        atoms.h
        base.h
        base.cpp
        potentials.h
        frame.cpp
        frame.h
        frames.h
        integrators.h
        main.cpp
        mdEngine.h
        parser.h
        potentialmanager.h
        ran2_lib.cpp
        ran2.f
        thermostats.h)

set_property(TARGET random PROPERTY LINKER_LANGUAGE Fortran)
target_link_libraries (md random)