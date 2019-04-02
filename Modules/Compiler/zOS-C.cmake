include(Compiler/zOS)
__compiler_zos(C)
set(CMAKE_C_FLAGS_RELEASE_INIT "${CMAKE_C_FLAGS_RELEASE_INIT} -DNDEBUG")
set(CMAKE_C_FLAGS_MINSIZEREL_INIT "${CMAKE_C_FLAGS_MINSIZEREL_INIT} -DNDEBUG")

# Raise severity of include file checks from warning to error for C.
set(CMAKE_PLATFORM_CHECK_INCLUDE_C_FLAGS "-qseverity=e=ccn3296")
