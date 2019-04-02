set(OS390 1)
set(ZOS 1)

set(CMAKE_STATIC_LIBRARY_PREFIX "lib")
set(CMAKE_STATIC_LIBRARY_SUFFIX ".a")
set(CMAKE_SHARED_LIBRARY_PREFIX "")
set(CMAKE_SHARED_LIBRARY_SUFFIX ".dll")
set(CMAKE_LINK_LIBRARY_SUFFIX "")
set(CMAKE_IMPORT_LIBRARY_PREFIX "")
set(CMAKE_IMPORT_LIBRARY_SUFFIX ".x")
set(CMAKE_EXECUTABLE_SUFFIX "")
set(CMAKE_DL_LIBS "")

set(CMAKE_FIND_LIBRARY_PREFIXES "lib")
set(CMAKE_FIND_LIBRARY_SUFFIXES ".x" ".a")

#set(CMAKE_C_COMPILE_OPTIONS_PIC "-PIC")
#set(CMAKE_C_COMPILE_OPTIONS_PIE "-PIE")
#set(CMAKE_EXE_LINKER_FLAGS "-qDLL")
set(CMAKE_SHARED_LIBRARY_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_CREATE_C_FLAGS "-Wl,DLL")
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
#set(CMAKE_SHARED_LIBRARY_RUNTIME_C_FLAG "-Wl,-R")
#set(CMAKE_SHARED_LIBRARY_RUNTIME_C_FLAG_SEP ":")

# RPATH support on AIX is called libpath.  By default the runtime
# libpath is paths specified by -L followed by /usr/lib and /lib.  In
# order to prevent the -L paths from being used we must force use of
# -Wl,-blibpath:/usr/lib:/lib whether RPATH support is on or not.
# When our own RPATH is to be added it may be inserted before the
# "always" paths.
#set(CMAKE_PLATFORM_REQUIRED_RUNTIME_PATH /usr/lib /lib)

# Files named "libfoo.a" may actually be shared libraries.
#set_property(GLOBAL PROPERTY TARGET_ARCHIVES_MAY_BE_SHARED_LIBS 1)

# since .a can be a static or shared library on AIX, we can not do this.
# at some point if we wanted it, we would have to figure out if a .a is
# static or shared, then we could add this back:

# Initialize C link type selection flags.  These flags are used when
# building a shared library, shared module, or executable that links
# to other libraries to select whether to use the static or shared
# versions of the libraries.
#foreach(type SHARED_LIBRARY SHARED_MODULE EXE)
#  set(CMAKE_${type}_LINK_STATIC_C_FLAGS "-bstatic")
#  set(CMAKE_${type}_LINK_DYNAMIC_C_FLAGS "-bdynamic")
#endforeach()

include(Platform/UnixPaths)

# Allow options and operands to be interspered for c89/cc/c++ utilities.
set(_CC_CCMODE ON)
set(_CXX_CCMODE ON)
set(_C89_CCMODE ON)
