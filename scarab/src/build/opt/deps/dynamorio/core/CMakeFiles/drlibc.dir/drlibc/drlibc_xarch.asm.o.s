# 1 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_xarch.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_xarch.asm"
# 37 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_xarch.asm"
# 1 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/../arch/asm_defines.asm" 1
# 42 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/../arch/asm_defines.asm"
# 1 "/home/rose/scarab/src/build/opt/deps/dynamorio/configure.h" 1
# 43 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/../arch/asm_defines.asm" 2
# 38 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_xarch.asm" 2
.text











        .align 0 
.global unexpected_return 
.hidden unexpected_return 
.type unexpected_return, %function
unexpected_return:
        
 mov rdx, 0x0 
 mov rsi, 0x0 
 mov rdi, 0x0 
 call d_r_internal_error 





        jmp unexpected_return
       



