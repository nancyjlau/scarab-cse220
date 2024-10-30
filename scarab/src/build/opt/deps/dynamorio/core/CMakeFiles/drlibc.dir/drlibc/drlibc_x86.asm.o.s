# 1 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_x86.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_x86.asm"
# 43 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_x86.asm"
# 1 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/../arch/asm_defines.asm" 1
# 42 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/../arch/asm_defines.asm"
# 1 "/home/rose/scarab/src/build/opt/deps/dynamorio/configure.h" 1
# 43 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/../arch/asm_defines.asm" 2
# 44 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_x86.asm" 2
# 1 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/../arch/x86/x86_asm_defines.asm" 1
# 45 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_x86.asm" 2



.text


# 61 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_x86.asm"
        .align 0 
.global dynamorio_syscall 
.hidden dynamorio_syscall 
.type dynamorio_syscall, %function
dynamorio_syscall:

        push rbx


        mov rbx, rsi
        mov rax, rdi




        cmp rbx, 0
        je syscall_ready
        mov rdi, rdx
        cmp rbx, 1
        je syscall_ready
        mov rsi, rcx
        cmp rbx, 2
        je syscall_ready
        mov rdx, r8
        cmp rbx, 3
        je syscall_ready
        mov rcx, r9
        cmp rbx, 4
        je syscall_ready
        mov r8, [2*8 + rsp]
        cmp rbx, 5
        je syscall_ready
        mov r9, [3*8 + rsp]
syscall_ready:
        mov r10, rcx
        syscall
# 184 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_x86.asm"
        pop rbx
# 193 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_x86.asm"
        ret
       
# 366 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_x86.asm"
        .align 0 
.global dr_fpu_exception_init 
.hidden dr_fpu_exception_init 
.type dr_fpu_exception_init, %function
dr_fpu_exception_init:
        fninit
        push 0x1f80
        ldmxcsr dword ptr [rsp]
        pop rax
        ret
       






        .align 0 
.global get_mmx_val 
.hidden get_mmx_val 
.type get_mmx_val, %function
get_mmx_val:
        mov rax, rdi
        mov rcx, rsi
       
        cmp ecx, 0
        je get_mmx_0
        cmp ecx, 1
        je get_mmx_1
        cmp ecx, 2
        je get_mmx_2
        cmp ecx, 3
        je get_mmx_3
        cmp ecx, 4
        je get_mmx_4
        cmp ecx, 5
        je get_mmx_5
        cmp ecx, 6
        je get_mmx_6
        movq qword ptr [rax], mm7
        jmp get_mmx_done
get_mmx_6:
        movq qword ptr [rax], mm6
        jmp get_mmx_done
get_mmx_5:
        movq qword ptr [rax], mm5
        jmp get_mmx_done
get_mmx_4:
        movq qword ptr [rax], mm4
        jmp get_mmx_done
get_mmx_3:
        movq qword ptr [rax], mm3
        jmp get_mmx_done
get_mmx_2:
        movq qword ptr [rax], mm2
        jmp get_mmx_done
get_mmx_1:
        movq qword ptr [rax], mm1
        jmp get_mmx_done
get_mmx_0:
        movq qword ptr [rax], mm0
get_mmx_done:
        add rsp, 0
        ret
       
# 757 "/home/rose/scarab/src/deps/dynamorio/core/drlibc/drlibc_x86.asm"

