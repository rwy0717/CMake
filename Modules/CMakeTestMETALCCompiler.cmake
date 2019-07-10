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

include(CMakeTestCompilerCommon)

PrintTestCompilerStatus("METALC" "")

if (NOT CMAKE_METALC_COMPILER)
  PrintTestCompilerStatus("METALC" " -- compiler not found")
  unset(CMAKE_METALC_COMPILER_WORKS CACHE)
  return()
endif()

if (NOT CMAKE_HLASM_AS)
  PrintTestCompilerStatus("METALC" " -- assembler not found")
  unset(CMAKE_METALC_COMPILER_WORKS CACHE)
  return()
endif()


PrintTestCompilerStatus("METALC" " -- works")
set(CMAKE_METALC_COMPILER_WORKS true)
