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

set(CMAKE_METALC_SOURCE_FILE_EXTENSIONS mc)
set(CMAKE_METALC_OUTPUT_EXTENSION .o)
set(CMAKE_INCLUDE_FLAG_METALC "-I")
set(CMAKE_METALC_DEFINE_FLAG "-D")

set(CMAKE_METALC_COMPILE_OBJECT
  "<CMAKE_COMMAND> -E copy <SOURCE> <OBJECT>.c"
  "<CMAKE_METALC_COMPILER> -qmetal -qlongname -S <DEFINES> <INCLUDES> <FLAGS> -o <OBJECT>.s <OBJECT>.c"
  "<CMAKE_HLASM_AS> -mgoff -I CBC.SCCNSAM <CMAKE_HLASM_FLAGS> -o <OBJECT> <OBJECT>.s"
)
