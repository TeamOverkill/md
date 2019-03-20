cmake_minimum_required(VERSION 3.10)
project(md)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wall")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -Wall")

SET(GCC_COVERAGE_COMPILE_FLAGS_RELEASE "-O3 -march=native -ffast-math -Xpreprocessor -fopenmp -std=c++17 -pthread")
SET(GCC_COVERAGE_LINK_FLAGS_RELEASE    "-O3 -march=native -ffast-math -lstdc++ -lomp")

SET(GCC_COVERAGE_COMPILE_FLAGS_DEBUG "-O3 -march=native -ffast-math -Xpreprocessor -fopenmp -std=c++17 -pthread")
SET(GCC_COVERAGE_LINK_FLAGS_DEBUG    "-O3 -march=native -ffast-math -lstdc++ -lomp")

SET( CMAKE_CXX_FLAGS_DEBUG  "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_COMPILE_FLAGS_DEBUG}" )
SET( CMAKE_EXE_LINKER_FLAGS_DEBUG  "${CMAKE_EXE_LINKER_FLAGS} ${GCC_COVERAGE_LINK_FLAGS_DEBUG}" )

SET( CMAKE_CXX_FLAGS_RELEASE  "${CMAKE_CXX_FLAGS} ${GCC_COVERAGE_COMPILE_FLAGS_RELEASE}" )
SET( CMAKE_EXE_LINKER_FLAGS_RELEASE  "${CMAKE_EXE_LINKER_FLAGS} ${GCC_COVERAGE_LINK_FLAGS_RELEASE}" )

include_directories(.)

#add_library(random ran2.f)

add_executable(md
        src/analysis.h
        src/atom.cpp
        src/atom.h
        src/atoms.cpp
        src/atoms.h
        src/base.h
        src/base.cpp
        src/potentials.h
        src/frame.cpp
        src/frame.h
        src/frames.h
        src/geometries.h
        src/integrators.h
        src/io.h
        src/main.cpp
        src/mdEngine.h
        src/potentialmanager.h
        src/potentials.h
        src/ran2_lib.h
        src/ran2_lib.cpp
        src/thermostats.h)

#set_property(TARGET random PROPERTY LINKER_LANGUAGE Fortran)
#target_link_libraries (md random)