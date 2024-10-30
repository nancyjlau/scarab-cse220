# Install script for directory: /home/rose/scarab/src/deps/dynamorio/clients/drcachesim

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libminizip.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_reuse_distance.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_histogram.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_reuse_time.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_basic_counts.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_opcode_mix.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_syscall_mix.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_view.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_func_view.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_invariant_checker.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_simulator.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_record_filter.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdirectory_iterator.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_raw2trace.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_analyzer.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/common/utils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/common/trace_entry.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/common/memref.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/common/memtrace_stream.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/common/archive_istream.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/common/archive_ostream.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/reader/reader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/reader/record_file_reader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/analysis_tool.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/analyzer.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/tools/reuse_distance_create.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/tools/histogram_create.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/tools/reuse_time_create.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/tools/basic_counts_create.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/tools/opcode_mix_create.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/tools/syscall_mix_create.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/simulator/cache_simulator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/simulator/cache_simulator_create.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/simulator/tlb_simulator_create.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/tools/view_create.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/tools/func_view_create.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/tracer/raw2trace.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/scheduler/scheduler.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/scheduler/speculator.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/lib64/release/libdrmemtrace.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/lib64/release/libdrmemtrace.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/lib64/release/libdrmemtrace.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE SHARED_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/lib64/release/libdrmemtrace.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/lib64/release/libdrmemtrace.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/lib64/release/libdrmemtrace.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/lib64/release" TYPE STATIC_LIBRARY FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/lib64/release/libdrmemtrace_static.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/include/drmemtrace" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/clients/drcachesim/tracer/drmemtrace.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/bin64/drcachesim" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/bin64/drcachesim")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/bin64/drcachesim"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/bin64" TYPE EXECUTABLE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/bin64/drcachesim")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/bin64/drcachesim" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/bin64/drcachesim")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/bin64/drcachesim")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/bin64/drraw2trace" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/bin64/drraw2trace")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/bin64/drraw2trace"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools/bin64" TYPE EXECUTABLE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/clients/bin64/drraw2trace")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/bin64/drraw2trace" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/bin64/drraw2trace")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/tools/bin64/drraw2trace")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/tools" TYPE FILE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/drcachesim.drrun64")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/clients/drcachesim/drpt2trace/cmake_install.cmake")

endif()

