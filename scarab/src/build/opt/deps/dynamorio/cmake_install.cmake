# Install script for directory: /home/rose/scarab/src/deps/dynamorio

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "ScarabOpt")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES
    "/home/rose/scarab/src/build/opt/deps/dynamorio/cmake/DynamoRIOConfig.cmake"
    "/home/rose/scarab/src/build/opt/deps/dynamorio/cmake/DynamoRIOConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES
    "/home/rose/scarab/src/deps/dynamorio/suite/runsuite_common_pre.cmake"
    "/home/rose/scarab/src/deps/dynamorio/suite/runsuite_common_post.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/suite/lookup_visualstudio.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/make/cpp2asm_support.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE RENAME "cpp2asm_add_newlines.cmake" FILES "/home/rose/scarab/src/deps/dynamorio/make/CMake_asm.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/cmake/cpp2asm_defines.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE RENAME "docs_rundoxygen.cmake" FILES "/home/rose/scarab/src/deps/dynamorio/api/docs/CMake_rundoxygen.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE RENAME "docs_doxyutils.cmake" FILES "/home/rose/scarab/src/deps/dynamorio/api/docs/CMake_doxyutils.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools" TYPE FILE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/tools/list64")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE DIRECTORY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/include" REGEX "annotations/valgrind.h|annotations/memcheck.h" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "/home/rose/scarab/src/deps/dynamorio/README"
    "/home/rose/scarab/src/deps/dynamorio/License.txt"
    "/home/rose/scarab/src/deps/dynamorio/ACKNOWLEDGEMENTS"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE DIRECTORY PERMISSIONS OWNER_READ OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/lib64/" FILES_MATCHING REGEX "/[^/]*\\.debug$" REGEX "/[^/]*\\.pdb$" REGEX ".*.dSYM/.*DWARF/.*" REGEX "/dynamorio\\.pdb$" EXCLUDE REGEX "/libdynamorio\\.so\\.[^/]*debug$" EXCLUDE REGEX "/libdrpreload\\.so\\.debug$" EXCLUDE REGEX "/policy\\_static\\.pdb$" EXCLUDE REGEX ".*dynamorio.*.dSYM/.*" EXCLUDE REGEX "libdrpreload.*.dSYM/.*" EXCLUDE REGEX "policy_static.*.dSYM/.*" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/release" TYPE DIRECTORY PERMISSIONS OWNER_READ OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/lib64/release/" FILES_MATCHING REGEX "/dynamorio\\.pdb$" REGEX "/libdynamorio\\.so\\.[^/]*debug$" REGEX "/libdrpreload\\.so\\.debug$" REGEX ".*dynamorio.*.dSYM/.*DWARF/.*" REGEX "libdrpreload.*.dSYM/.*DWARF/.*")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin64" TYPE DIRECTORY PERMISSIONS OWNER_READ OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/bin64/" FILES_MATCHING REGEX "/[^/]*\\.debug$" REGEX "/[^/]*\\.pdb$" REGEX ".*.dSYM/.*DWARF/.*" REGEX "/runstats\\.debug$" EXCLUDE REGEX "/run\\_in\\_bg\\.debug$" EXCLUDE REGEX "/[^/]*\\_exe\\.debug$" EXCLUDE REGEX "runstats.dSYM/.*" EXCLUDE REGEX "run_in_bg.dSYM/.*" EXCLUDE REGEX ".*_exe.dSYM/.*" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/docs" TYPE FILE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/docs/DynamoRIO.html")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/logs" TYPE FILE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/logs/README")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(APPEND "/home/rose/scarab/src/build/opt/deps/dynamorio/CMakeFiles/Export/cmake/DynamoRIOTarget64.cmake" "
SET_PROPERTY(TARGET dynamorio PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET dynamorio PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET dynamorio_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET dynamorio_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drinjectlib PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drinjectlib PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drdecode PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drdecode PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drlibc PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drlibc PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemfuncs PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemfuncs PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drconfiglib PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drconfiglib PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drfrontendlib PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drfrontendlib PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET minizip PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET minizip PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_reuse_distance PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_reuse_distance PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_histogram PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_histogram PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_reuse_time PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_reuse_time PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_basic_counts PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_basic_counts PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_opcode_mix PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_opcode_mix PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_syscall_mix PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_syscall_mix PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_view PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_view PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_func_view PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_func_view PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_invariant_checker PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_invariant_checker PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_simulator PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_simulator PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_record_filter PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_record_filter PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET directory_iterator PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET directory_iterator PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET ipt PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET ipt PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET pevent PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET pevent PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET ipt-sb PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET ipt-sb PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drpt2ir PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drpt2ir PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drir2trace PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drir2trace PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_raw2trace PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_raw2trace PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmemtrace_analyzer PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmemtrace_analyzer PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drcontainers PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drcontainers PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmgr PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmgr PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drmgr_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drmgr_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drx PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drx PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drx_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drx_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drwrap PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drwrap PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drwrap_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drwrap_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drreg PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drreg PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drreg_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drreg_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drbbdup PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drbbdup PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drbbdup_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drbbdup_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drsyms PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drsyms PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drsyms_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drsyms_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drutil PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drutil PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drutil_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drutil_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drcovlib PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drcovlib PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drcovlib_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drcovlib_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drstatecmp PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drstatecmp PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drstatecmp_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drstatecmp_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drpttracer PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drpttracer PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drpttracer_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drpttracer_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drcallstack PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drcallstack PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)

SET_PROPERTY(TARGET drcallstack_static PROPERTY MAP_IMPORTED_CONFIG_RELEASE RelWithDebInfo)
SET_PROPERTY(TARGET drcallstack_static PROPERTY MAP_IMPORTED_CONFIG_RELMINSIZE RelWithDebInfo)
")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/DynamoRIOTarget64.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/DynamoRIOTarget64.cmake"
         "/home/rose/scarab/src/build/opt/deps/dynamorio/CMakeFiles/Export/cmake/DynamoRIOTarget64.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/DynamoRIOTarget64-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/DynamoRIOTarget64.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/CMakeFiles/Export/cmake/DynamoRIOTarget64.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Ss][Cc][Aa][Rr][Aa][Bb][Oo][Pp][Tt])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/CMakeFiles/Export/cmake/DynamoRIOTarget64-scarabopt.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/core/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/libutil/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/tools/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/clients/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/api/docs/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/api/samples/cmake_install.cmake")

endif()

