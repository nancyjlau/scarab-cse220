#----------------------------------------------------------------
# Generated CMake target import file for configuration "ScarabOpt".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "dynamorio" for configuration "ScarabOpt"
set_property(TARGET dynamorio APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(dynamorio PROPERTIES
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/lib64/release/libdynamorio.so"
  IMPORTED_SONAME_SCARABOPT "libdynamorio.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS dynamorio )
list(APPEND _IMPORT_CHECK_FILES_FOR_dynamorio "${_IMPORT_PREFIX}/lib64/release/libdynamorio.so" )

# Import target "dynamorio_static" for configuration "ScarabOpt"
set_property(TARGET dynamorio_static APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(dynamorio_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "ASM;C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/lib64/release/libdynamorio_static.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS dynamorio_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_dynamorio_static "${_IMPORT_PREFIX}/lib64/release/libdynamorio_static.a" )

# Import target "drinjectlib" for configuration "ScarabOpt"
set_property(TARGET drinjectlib APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drinjectlib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/lib64/libdrinjectlib.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drinjectlib )
list(APPEND _IMPORT_CHECK_FILES_FOR_drinjectlib "${_IMPORT_PREFIX}/lib64/libdrinjectlib.a" )

# Import target "drdecode" for configuration "ScarabOpt"
set_property(TARGET drdecode APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drdecode PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/lib64/release/libdrdecode.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drdecode )
list(APPEND _IMPORT_CHECK_FILES_FOR_drdecode "${_IMPORT_PREFIX}/lib64/release/libdrdecode.a" )

# Import target "drlibc" for configuration "ScarabOpt"
set_property(TARGET drlibc APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drlibc PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "ASM;C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/lib64/libdrlibc.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drlibc )
list(APPEND _IMPORT_CHECK_FILES_FOR_drlibc "${_IMPORT_PREFIX}/lib64/libdrlibc.a" )

# Import target "drmemfuncs" for configuration "ScarabOpt"
set_property(TARGET drmemfuncs APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemfuncs PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "ASM;C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/lib64/libdrmemfuncs.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemfuncs )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemfuncs "${_IMPORT_PREFIX}/lib64/libdrmemfuncs.a" )

# Import target "drconfiglib" for configuration "ScarabOpt"
set_property(TARGET drconfiglib APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drconfiglib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/lib64/libdrconfiglib.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drconfiglib )
list(APPEND _IMPORT_CHECK_FILES_FOR_drconfiglib "${_IMPORT_PREFIX}/lib64/libdrconfiglib.a" )

# Import target "drfrontendlib" for configuration "ScarabOpt"
set_property(TARGET drfrontendlib APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drfrontendlib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/bin64/libdrfrontendlib.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drfrontendlib )
list(APPEND _IMPORT_CHECK_FILES_FOR_drfrontendlib "${_IMPORT_PREFIX}/bin64/libdrfrontendlib.a" )

# Import target "minizip" for configuration "ScarabOpt"
set_property(TARGET minizip APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(minizip PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libminizip.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS minizip )
list(APPEND _IMPORT_CHECK_FILES_FOR_minizip "${_IMPORT_PREFIX}/tools/lib64/release/libminizip.a" )

# Import target "drmemtrace_reuse_distance" for configuration "ScarabOpt"
set_property(TARGET drmemtrace_reuse_distance APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemtrace_reuse_distance PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_reuse_distance.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_reuse_distance )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_reuse_distance "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_reuse_distance.a" )

# Import target "drmemtrace_histogram" for configuration "ScarabOpt"
set_property(TARGET drmemtrace_histogram APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemtrace_histogram PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_histogram.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_histogram )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_histogram "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_histogram.a" )

# Import target "drmemtrace_reuse_time" for configuration "ScarabOpt"
set_property(TARGET drmemtrace_reuse_time APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemtrace_reuse_time PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_reuse_time.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_reuse_time )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_reuse_time "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_reuse_time.a" )

# Import target "drmemtrace_basic_counts" for configuration "ScarabOpt"
set_property(TARGET drmemtrace_basic_counts APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemtrace_basic_counts PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_basic_counts.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_basic_counts )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_basic_counts "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_basic_counts.a" )

# Import target "drmemtrace_opcode_mix" for configuration "ScarabOpt"
set_property(TARGET drmemtrace_opcode_mix APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemtrace_opcode_mix PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_opcode_mix.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_opcode_mix )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_opcode_mix "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_opcode_mix.a" )

# Import target "drmemtrace_syscall_mix" for configuration "ScarabOpt"
set_property(TARGET drmemtrace_syscall_mix APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemtrace_syscall_mix PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_syscall_mix.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_syscall_mix )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_syscall_mix "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_syscall_mix.a" )

# Import target "drmemtrace_view" for configuration "ScarabOpt"
set_property(TARGET drmemtrace_view APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemtrace_view PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_view.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_view )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_view "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_view.a" )

# Import target "drmemtrace_func_view" for configuration "ScarabOpt"
set_property(TARGET drmemtrace_func_view APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemtrace_func_view PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_func_view.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_func_view )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_func_view "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_func_view.a" )

# Import target "drmemtrace_invariant_checker" for configuration "ScarabOpt"
set_property(TARGET drmemtrace_invariant_checker APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemtrace_invariant_checker PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_invariant_checker.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_invariant_checker )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_invariant_checker "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_invariant_checker.a" )

# Import target "drmemtrace_simulator" for configuration "ScarabOpt"
set_property(TARGET drmemtrace_simulator APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemtrace_simulator PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_simulator.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_simulator )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_simulator "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_simulator.a" )

# Import target "drmemtrace_record_filter" for configuration "ScarabOpt"
set_property(TARGET drmemtrace_record_filter APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemtrace_record_filter PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_record_filter.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_record_filter )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_record_filter "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_record_filter.a" )

# Import target "directory_iterator" for configuration "ScarabOpt"
set_property(TARGET directory_iterator APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(directory_iterator PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdirectory_iterator.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS directory_iterator )
list(APPEND _IMPORT_CHECK_FILES_FOR_directory_iterator "${_IMPORT_PREFIX}/tools/lib64/release/libdirectory_iterator.a" )

# Import target "ipt" for configuration "ScarabOpt"
set_property(TARGET ipt APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(ipt PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libipt.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ipt )
list(APPEND _IMPORT_CHECK_FILES_FOR_ipt "${_IMPORT_PREFIX}/tools/lib64/release/libipt.a" )

# Import target "pevent" for configuration "ScarabOpt"
set_property(TARGET pevent APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(pevent PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libpevent.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS pevent )
list(APPEND _IMPORT_CHECK_FILES_FOR_pevent "${_IMPORT_PREFIX}/tools/lib64/release/libpevent.a" )

# Import target "ipt-sb" for configuration "ScarabOpt"
set_property(TARGET ipt-sb APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(ipt-sb PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libipt-sb.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS ipt-sb )
list(APPEND _IMPORT_CHECK_FILES_FOR_ipt-sb "${_IMPORT_PREFIX}/tools/lib64/release/libipt-sb.a" )

# Import target "drpt2ir" for configuration "ScarabOpt"
set_property(TARGET drpt2ir APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drpt2ir PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrpt2ir.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drpt2ir )
list(APPEND _IMPORT_CHECK_FILES_FOR_drpt2ir "${_IMPORT_PREFIX}/tools/lib64/release/libdrpt2ir.a" )

# Import target "drir2trace" for configuration "ScarabOpt"
set_property(TARGET drir2trace APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drir2trace PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrir2trace.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drir2trace )
list(APPEND _IMPORT_CHECK_FILES_FOR_drir2trace "${_IMPORT_PREFIX}/tools/lib64/release/libdrir2trace.a" )

# Import target "drmemtrace_raw2trace" for configuration "ScarabOpt"
set_property(TARGET drmemtrace_raw2trace APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemtrace_raw2trace PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_raw2trace.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_raw2trace )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_raw2trace "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_raw2trace.a" )

# Import target "drmemtrace_analyzer" for configuration "ScarabOpt"
set_property(TARGET drmemtrace_analyzer APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmemtrace_analyzer PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_analyzer.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmemtrace_analyzer )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmemtrace_analyzer "${_IMPORT_PREFIX}/tools/lib64/release/libdrmemtrace_analyzer.a" )

# Import target "drcontainers" for configuration "ScarabOpt"
set_property(TARGET drcontainers APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drcontainers PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrcontainers.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drcontainers )
list(APPEND _IMPORT_CHECK_FILES_FOR_drcontainers "${_IMPORT_PREFIX}/ext/lib64/release/libdrcontainers.a" )

# Import target "drmgr" for configuration "ScarabOpt"
set_property(TARGET drmgr APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmgr PROPERTIES
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrmgr.so"
  IMPORTED_SONAME_SCARABOPT "libdrmgr.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmgr )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmgr "${_IMPORT_PREFIX}/ext/lib64/release/libdrmgr.so" )

# Import target "drmgr_static" for configuration "ScarabOpt"
set_property(TARGET drmgr_static APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drmgr_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrmgr_static.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drmgr_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drmgr_static "${_IMPORT_PREFIX}/ext/lib64/release/libdrmgr_static.a" )

# Import target "drx" for configuration "ScarabOpt"
set_property(TARGET drx APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drx PROPERTIES
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrx.so"
  IMPORTED_SONAME_SCARABOPT "libdrx.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS drx )
list(APPEND _IMPORT_CHECK_FILES_FOR_drx "${_IMPORT_PREFIX}/ext/lib64/release/libdrx.so" )

# Import target "drx_static" for configuration "ScarabOpt"
set_property(TARGET drx_static APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drx_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrx_static.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drx_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drx_static "${_IMPORT_PREFIX}/ext/lib64/release/libdrx_static.a" )

# Import target "drwrap" for configuration "ScarabOpt"
set_property(TARGET drwrap APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drwrap PROPERTIES
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrwrap.so"
  IMPORTED_SONAME_SCARABOPT "libdrwrap.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS drwrap )
list(APPEND _IMPORT_CHECK_FILES_FOR_drwrap "${_IMPORT_PREFIX}/ext/lib64/release/libdrwrap.so" )

# Import target "drwrap_static" for configuration "ScarabOpt"
set_property(TARGET drwrap_static APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drwrap_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "ASM;C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrwrap_static.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drwrap_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drwrap_static "${_IMPORT_PREFIX}/ext/lib64/release/libdrwrap_static.a" )

# Import target "drreg" for configuration "ScarabOpt"
set_property(TARGET drreg APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drreg PROPERTIES
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrreg.so"
  IMPORTED_SONAME_SCARABOPT "libdrreg.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS drreg )
list(APPEND _IMPORT_CHECK_FILES_FOR_drreg "${_IMPORT_PREFIX}/ext/lib64/release/libdrreg.so" )

# Import target "drreg_static" for configuration "ScarabOpt"
set_property(TARGET drreg_static APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drreg_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrreg_static.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drreg_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drreg_static "${_IMPORT_PREFIX}/ext/lib64/release/libdrreg_static.a" )

# Import target "drbbdup" for configuration "ScarabOpt"
set_property(TARGET drbbdup APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drbbdup PROPERTIES
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrbbdup.so"
  IMPORTED_SONAME_SCARABOPT "libdrbbdup.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS drbbdup )
list(APPEND _IMPORT_CHECK_FILES_FOR_drbbdup "${_IMPORT_PREFIX}/ext/lib64/release/libdrbbdup.so" )

# Import target "drbbdup_static" for configuration "ScarabOpt"
set_property(TARGET drbbdup_static APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drbbdup_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrbbdup_static.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drbbdup_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drbbdup_static "${_IMPORT_PREFIX}/ext/lib64/release/libdrbbdup_static.a" )

# Import target "drsyms" for configuration "ScarabOpt"
set_property(TARGET drsyms APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drsyms PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_SCARABOPT "dynamorio"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrsyms.so"
  IMPORTED_SONAME_SCARABOPT "libdrsyms.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS drsyms )
list(APPEND _IMPORT_CHECK_FILES_FOR_drsyms "${_IMPORT_PREFIX}/ext/lib64/release/libdrsyms.so" )

# Import target "drsyms_static" for configuration "ScarabOpt"
set_property(TARGET drsyms_static APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drsyms_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C;CXX"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrsyms_static.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drsyms_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drsyms_static "${_IMPORT_PREFIX}/ext/lib64/release/libdrsyms_static.a" )

# Import target "drutil" for configuration "ScarabOpt"
set_property(TARGET drutil APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drutil PROPERTIES
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrutil.so"
  IMPORTED_SONAME_SCARABOPT "libdrutil.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS drutil )
list(APPEND _IMPORT_CHECK_FILES_FOR_drutil "${_IMPORT_PREFIX}/ext/lib64/release/libdrutil.so" )

# Import target "drutil_static" for configuration "ScarabOpt"
set_property(TARGET drutil_static APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drutil_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrutil_static.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drutil_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drutil_static "${_IMPORT_PREFIX}/ext/lib64/release/libdrutil_static.a" )

# Import target "drcovlib" for configuration "ScarabOpt"
set_property(TARGET drcovlib APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drcovlib PROPERTIES
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrcovlib.so"
  IMPORTED_SONAME_SCARABOPT "libdrcovlib.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS drcovlib )
list(APPEND _IMPORT_CHECK_FILES_FOR_drcovlib "${_IMPORT_PREFIX}/ext/lib64/release/libdrcovlib.so" )

# Import target "drcovlib_static" for configuration "ScarabOpt"
set_property(TARGET drcovlib_static APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drcovlib_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrcovlib_static.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drcovlib_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drcovlib_static "${_IMPORT_PREFIX}/ext/lib64/release/libdrcovlib_static.a" )

# Import target "drstatecmp" for configuration "ScarabOpt"
set_property(TARGET drstatecmp APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drstatecmp PROPERTIES
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrstatecmp.so"
  IMPORTED_SONAME_SCARABOPT "libdrstatecmp.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS drstatecmp )
list(APPEND _IMPORT_CHECK_FILES_FOR_drstatecmp "${_IMPORT_PREFIX}/ext/lib64/release/libdrstatecmp.so" )

# Import target "drstatecmp_static" for configuration "ScarabOpt"
set_property(TARGET drstatecmp_static APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drstatecmp_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrstatecmp_static.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drstatecmp_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drstatecmp_static "${_IMPORT_PREFIX}/ext/lib64/release/libdrstatecmp_static.a" )

# Import target "drpttracer" for configuration "ScarabOpt"
set_property(TARGET drpttracer APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drpttracer PROPERTIES
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrpttracer.so"
  IMPORTED_SONAME_SCARABOPT "libdrpttracer.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS drpttracer )
list(APPEND _IMPORT_CHECK_FILES_FOR_drpttracer "${_IMPORT_PREFIX}/ext/lib64/release/libdrpttracer.so" )

# Import target "drpttracer_static" for configuration "ScarabOpt"
set_property(TARGET drpttracer_static APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drpttracer_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrpttracer_static.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drpttracer_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drpttracer_static "${_IMPORT_PREFIX}/ext/lib64/release/libdrpttracer_static.a" )

# Import target "drcallstack" for configuration "ScarabOpt"
set_property(TARGET drcallstack APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drcallstack PROPERTIES
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrcallstack.so"
  IMPORTED_SONAME_SCARABOPT "libdrcallstack.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS drcallstack )
list(APPEND _IMPORT_CHECK_FILES_FOR_drcallstack "${_IMPORT_PREFIX}/ext/lib64/release/libdrcallstack.so" )

# Import target "drcallstack_static" for configuration "ScarabOpt"
set_property(TARGET drcallstack_static APPEND PROPERTY IMPORTED_CONFIGURATIONS SCARABOPT)
set_target_properties(drcallstack_static PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_SCARABOPT "C"
  IMPORTED_LOCATION_SCARABOPT "${_IMPORT_PREFIX}/ext/lib64/release/libdrcallstack_static.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS drcallstack_static )
list(APPEND _IMPORT_CHECK_FILES_FOR_drcallstack_static "${_IMPORT_PREFIX}/ext/lib64/release/libdrcallstack_static.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
