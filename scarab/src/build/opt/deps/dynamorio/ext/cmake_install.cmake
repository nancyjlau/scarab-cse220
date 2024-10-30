# Install script for directory: /home/rose/scarab/src/deps/dynamorio/ext

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/ext/lib64/release" TYPE DIRECTORY PERMISSIONS OWNER_READ OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/ext/lib64/release/" FILES_MATCHING REGEX "/[^/]*\\.debug$" REGEX "/[^/]*\\.pdb$" REGEX ".*.dSYM/.*DWARF/.*")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/ext/bin64" TYPE DIRECTORY PERMISSIONS OWNER_READ OWNER_EXECUTE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/rose/scarab/src/build/opt/deps/dynamorio/ext/lib64/release/" FILES_MATCHING REGEX "/[^/]*\\.debug$" REGEX "/[^/]*\\.pdb$" REGEX ".*.dSYM/.*DWARF/.*")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/ext/include" TYPE FILE FILES "/home/rose/scarab/src/deps/dynamorio/ext/drext.h")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/drcontainers/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/drgui/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/drmgr/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/drx/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/drwrap/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/drreg/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/drbbdup/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/drsyms/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/drutil/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/droption/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/drcovlib/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/drstatecmp/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/drpttracer/cmake_install.cmake")
  include("/home/rose/scarab/src/build/opt/deps/dynamorio/ext/drcallstack/cmake_install.cmake")

endif()

