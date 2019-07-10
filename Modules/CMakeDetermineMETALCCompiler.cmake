#=============================================================================
# Copyright 2019 Kitware, Inc.
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file Copyright.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distribute this file outside of CMake, substitute the full
#  License text for the above reference.)

set(CMAKE_METALC_COMPILER_ENV_VAR "METALC_CC")

include(${CMAKE_ROOT}/Modules/CMakeDetermineCompiler.cmake)

if (NOT CMAKE_METALC_COMPILER)
  set(CMAKE_METALC_COMPILER_LIST xlc)
  _cmake_find_compiler(METALC)
  mark_as_advanced(CMAKE_METALC_COMPILER)

endif(NOT CMAKE_METALC_COMPILER)

if (NOT CMAKE_HLASM_AS)
  find_program(CMAKE_DETECTED_HLASM_AS as)
  set(CMAKE_HLASM_AS "${CMAKE_DETECTED_HLASM_AS}")
endif()

if (NOT CMAKE_HLASM_FLAGS)
  set(CMAKE_HLASM_FLAGS "")
endif()

message(STATUS "METAL-C compiler: ${CMAKE_METALC_COMPILER}")
message(STATUS "METAL-C assembler: ${CMAKE_HLASM_AS}")

configure_file(
  ${CMAKE_CURRENT_LIST_DIR}/CMakeMETALCCompiler.cmake.in
  ${CMAKE_PLATFORM_INFO_DIR}/CMakeMETALCCompiler.cmake
  @ONLY
)
