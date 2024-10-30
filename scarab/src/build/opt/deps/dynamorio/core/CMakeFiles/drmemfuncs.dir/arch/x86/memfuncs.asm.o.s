# 1 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/memfuncs.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/memfuncs.asm"
# 59 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/memfuncs.asm"
# 1 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/../asm_defines.asm" 1
# 42 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/../asm_defines.asm"
# 1 "/home/rose/scarab/src/build/opt/deps/dynamorio/configure.h" 1
# 43 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/../asm_defines.asm" 2
# 60 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/memfuncs.asm" 2
# 1 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86_asm_defines.asm" 1
# 61 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/memfuncs.asm" 2
.text
# 82 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/memfuncs.asm"
        .align 0 
.global memcpy 
.hidden memcpy 
.type memcpy, %function




        .weak memcpy
memcpy:
       
        mov rax, rdi

        mov rcx, rsi 
 and rcx, (8 - 1) 
 jz memcpy_aligned 
 neg rcx 
 add rcx, 8 
 cmp rdx, rcx 
 cmovb rcx, rdx 
 sub rdx, rcx 
memcpy_pre: 
 rep movsb 
memcpy_aligned: 
 
 mov rcx, rdx 
 shr rcx, 3 
memcpy_mid: 
 rep movsq 
 
 mov rcx, rdx 
 and rcx, (8 - 1) 
memcpy_post: 
 rep movsb
       
        ret
       



        .align 0 
.global memset 
.hidden memset 
.type memset, %function

        .weak memset
memset:
       
        push rdi
        test esi, esi
        jnz make_val_word_size
        xor eax, eax
do_memset:

        mov rcx, rdi 
 and rcx, (8 - 1) 
 jz memset_aligned 
 neg rcx 
 add rcx, 8 
 cmp rdx, rcx 
 cmovb rcx, rdx 
 sub rdx, rcx 
memset_pre: 
 rep stosb 
memset_aligned: 
 
 mov rcx, rdx 
 shr rcx, 3 
memset_mid: 
 rep stosq 
 
 mov rcx, rdx 
 and rcx, (8 - 1) 
memset_post: 
 rep stosb
        pop rax
       
        ret


make_val_word_size:
        and esi, 0xff

        mov rax, 0x0101010101010101




        imul rax, rsi
        jmp do_memset
       
# 135 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/memfuncs.asm"
.global __memcpy_chk
.hidden __memcpy_chk
.weak __memcpy_chk
.set __memcpy_chk,memcpy

.global __memset_chk
.hidden __memset_chk
.weak __memset_chk
.set __memset_chk,memset






