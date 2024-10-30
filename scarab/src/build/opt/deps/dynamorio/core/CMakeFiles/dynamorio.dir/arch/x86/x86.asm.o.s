# 1 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
# 72 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
# 1 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/../asm_defines.asm" 1
# 42 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/../asm_defines.asm"
# 1 "/home/rose/scarab/src/build/opt/deps/dynamorio/configure.h" 1
# 43 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/../asm_defines.asm" 2
# 73 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm" 2
.text


# 1 "/home/rose/scarab/src/deps/dynamorio/core/unix/os_asm_defines.asm" 1
# 77 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm" 2

# 1 "/home/rose/scarab/src/deps/dynamorio/core/unix/include/syscall.h" 1
# 22 "/home/rose/scarab/src/deps/dynamorio/core/unix/include/syscall.h"
# 1 "/home/rose/scarab/src/deps/dynamorio/core/unix/include/syscall_linux_x86.h" 1
# 23 "/home/rose/scarab/src/deps/dynamorio/core/unix/include/syscall.h" 2
# 79 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm" 2
# 115 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
# 1 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86_asm_defines.asm" 1
# 116 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm" 2
# 144 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"






















































# 237 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global get_pic_xdi 
.hidden get_pic_xdi 
.type get_pic_xdi, %function
get_pic_xdi:
        mov rdi, qword ptr [rsp]
        ret
       
# 250 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global call_switch_stack 
.hidden call_switch_stack 
.type call_switch_stack, %function
call_switch_stack:
# 262 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        lea rsp, [-5*8 + rsp]

        lea rax, [-8 + rsp]
        mov [5*8 + rax], r8

        mov [1*8 + rax], rdi
        mov [2*8 + rax], rsi
        mov [3*8 + rax], rdx
        mov [4*8 + rax], rcx





        push rbx
        mov rbx, rax

        push r12
        mov r12, rsp

        mov rdx, [3*8 + rax]
        mov rcx, [1*8 + rax]
        mov rsp, [2*8 + rax]
        cmp qword ptr [4*8 + rax], 0
        je call_dispatch_alt_stack_no_free
        mov rax, [4*8 + rax]
        mov dword ptr [rax], 0
call_dispatch_alt_stack_no_free:
        
 mov rdi, rcx 
 call rdx 

        mov rsp, r12
        mov rax, rbx
        cmp byte ptr [5*8 + rax], 0
        je unexpected_return
        pop r12
        pop rbx




        lea rsp, [5*8 + rsp]




        ret
       
# 327 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global dr_call_on_clean_stack 
.type dr_call_on_clean_stack, %function
dr_call_on_clean_stack:
# 347 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        lea rsp, [-5*8 + rsp]

        lea rax, [-8 + rsp]

        mov r10, [6*8 + rax]
        mov [5*8 + rax], r8
        mov [6*8 + rax], r9

        mov [1*8 + rax], rdi
        mov [2*8 + rax], rsi
        mov [3*8 + rax], rdx
        mov [4*8 + rax], rcx





        push r10


        push rbx
        push rbp
# 377 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        mov rbx, rax
        mov rbp, rsp

        mov r10, [2*8 + rax]
        mov r11, [1*8 + rax]
        mov rsp, qword ptr [((18*8 + 48 + ((32)*(64)) + ((8)*(8)))+(8 + 5 * 8)+3*8) + r11]




        lea rsp, [-8*4 + rsp]
        mov r11, [10*8 + rax]
        mov qword ptr [1*8 + rsp], r11
        mov r11, [9*8 + rax]
        mov qword ptr [0*8 + rsp], r11
        mov r11, [8*8 + rax]
        mov r9, r11
        mov r11, [7*8 + rax]
        mov r8, r11
        mov r11, [6*8 + rax]
        mov rcx, r11
        mov r11, [5*8 + rax]
        mov rdx, r11
        mov r11, [4*8 + rax]
        mov rsi, r11
        mov r11, [3*8 + rax]
        mov rdi, r11
        call r10

        lea rsp, [8*4 + rsp]
        mov rsp, rbp
        mov rcx, rbx





        pop rbp
        pop rbx




        pop r10
        lea rsp, [5*8 + rsp]
        mov qword ptr [rsp], r10




        ret
       







        .align 0 
.global clone_and_swap_stack 
.hidden clone_and_swap_stack 
.type clone_and_swap_stack, %function
clone_and_swap_stack:
        mov rax, rdi
        mov rcx, rsi
        mov rdx, rsp

        push rsi
        push rdi

        sub rcx, rdx
        mov rsi, rdx
        mov rdi, rax
        sub rdi, rcx
        sub rax, rcx

        cld
        rep movsb

        pop rdi
        pop rsi
        mov rsp, rax
        ret
       





        .align 0 
.global dr_app_start 
.type dr_app_start, %function
dr_app_start:
        sub rsp, 16 - 8


        lea rsp, [rsp + (- ((32)*(64)) - ((8)*(8)) - 48)] 
 push qword ptr [16 - 8 + rsp - (- ((32)*(64)) - ((8)*(8)) - 48)] 
 pushfq 
 push r15 
 push r14 
 push r13 
 push r12 
 push r11 
 push r10 
 push r9 
 push r8 
 push rax 
 push rcx 
 push rdx 
 push rbx 
 
 push rsp 
 push rbp 
 push rsi 
 push rdi 
 lea rax, [rsp] 
 
 mov rdi, rax 
 call get_simd_vals 
 
 lea rax, [(18*8 + 48 + ((32)*(64)) + ((8)*(8))) + rsp] 
 mov [(3*8) + rsp], rax



        lea rax, [rsp]
        
 mov rdi, rax 
 call dr_app_start_helper 



        add rsp, (18*8 + 48 + ((32)*(64)) + ((8)*(8))) + 16 - 8
        ret
       






        .align 0 
.global dr_app_take_over 
.type dr_app_take_over, %function
dr_app_take_over:
        jmp dynamorio_app_take_over
       







        .align 0 
.global dr_app_running_under_dynamorio 
.type dr_app_running_under_dynamorio, %function
dr_app_running_under_dynamorio:
        mov eax, 0
        ret
       






        .align 0 
.global dynamorio_app_take_over 
.type dynamorio_app_take_over, %function
dynamorio_app_take_over:
        sub rsp, 16 - 8


        lea rsp, [rsp + (- ((32)*(64)) - ((8)*(8)) - 48)] 
 push qword ptr [16 - 8 + rsp - (- ((32)*(64)) - ((8)*(8)) - 48)] 
 pushfq 
 push r15 
 push r14 
 push r13 
 push r12 
 push r11 
 push r10 
 push r9 
 push r8 
 push rax 
 push rcx 
 push rdx 
 push rbx 
 
 push rsp 
 push rbp 
 push rsi 
 push rdi 
 lea rax, [rsp] 
 
 mov rdi, rax 
 call get_simd_vals 
 
 lea rax, [(18*8 + 48 + ((32)*(64)) + ((8)*(8))) + rsp] 
 mov [(3*8) + rsp], rax



        lea rax, [rsp]
        
 mov rdi, rax 
 call dynamorio_app_take_over_helper 



        add rsp, (18*8 + 48 + ((32)*(64)) + ((8)*(8))) + 16 - 8
        ret
       
# 539 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global cleanup_and_terminate 
.hidden cleanup_and_terminate 
.type cleanup_and_terminate, %function
cleanup_and_terminate:
# 550 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        lea rsp, [-5*8 + rsp]

        lea rbp, [-8 + rsp]
        mov [5*8 + rbp], r8
        mov [6*8 + rbp], r9
        mov rax, qword ptr [1*8 + rsp]
        mov [7*8 + rbp], rax

        mov [1*8 + rbp], rdi
        mov [2*8 + rbp], rsi
        mov [3*8 + rbp], rdx
        mov [4*8 + rbp], rcx
# 579 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        lock inc dword ptr [rip + exiting_thread_count]



        mov rbx, qword ptr [1*8 + rbp]
        mov qword ptr [(((18*8 + 48 + ((32)*(64)) + ((8)*(8)))+(8 + 5 * 8)+3*8)+1*8) + rbx], 1
        
 mov rdi, rbx 
 call is_currently_on_dstack 

        cmp al, 0
        jnz cat_save_dstack
        mov rbx, 0
        jmp cat_done_saving_dstack
cat_save_dstack:
        mov rbx, qword ptr [((18*8 + 48 + ((32)*(64)) + ((8)*(8)))+(8 + 5 * 8)+3*8) + rbx]
cat_done_saving_dstack:





        
 call get_cleanup_and_terminate_global_do_syscall_entry 




        push rbx
        push rax

        movzx esi, byte ptr [5*8 + rbp]
        cmp esi, 0
        jz cat_thread_only
        
 call dynamo_process_exit 

        jmp cat_no_thread
cat_thread_only:
        
 call dynamo_thread_exit 

cat_no_thread:



        mov ecx, 1




cat_spin:



        xchg dword ptr [rip + initstack_mutex], ecx

        jecxz cat_have_lock

        pause
        jmp cat_spin
cat_have_lock:
# 643 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        mov rsi, [2*8 + rbp]




        pop rax
        pop rcx



        mov rbx, rbp






        mov rsp, qword ptr [rip + d_r_initstack]
# 677 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        push qword ptr [4*8 + rbx]
        push qword ptr [3*8 + rbx]
        push rax
        push rsi




        
 mov rdi, rcx 
 call dynamo_thread_stack_free_and_exit 





        pop rax


        pop r10

        pop rdi
        pop rsi
# 728 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        mov dword ptr [rip + initstack_mutex], 0
# 737 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        lock dec dword ptr [rip + exiting_thread_count]


        jmp r10



       
# 754 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global global_do_syscall_int 
.hidden global_do_syscall_int 
.type global_do_syscall_int, %function
global_do_syscall_int:






        int 0x80






        jmp dynamorio_sys_exit_group

       
# 793 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global global_do_syscall_sysenter 
.hidden global_do_syscall_sysenter 
.type global_do_syscall_sysenter, %function
global_do_syscall_sysenter:
        .byte 0x0f 
 .byte 0x34 







       
# 841 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
       .align 0 
.global global_do_syscall_syscall 
.hidden global_do_syscall_syscall 
.type global_do_syscall_syscall, %function
global_do_syscall_syscall:
        mov r10, rcx
        syscall





        jmp dynamorio_sys_exit_group

       
# 1126 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global client_int_syscall 
.hidden client_int_syscall 
.type client_int_syscall, %function
client_int_syscall:
        int 0x80
        ret
       
# 1143 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global _start 
.hidden _start 
.type _start, %function
_start:




        nop
        nop




        cmp rdi, 0
        jne reloaded_xfer
        mov rax, rsp
        
 mov rdx, rax 
 mov rsi, 0 
 mov rdi, 0 
 call relocate_dynamorio 

        mov rdi, 0

reloaded_xfer:
        xor rbp, rbp


        mov rdx, rsi
        mov rsi, rdi
        mov rdi, rsp
# 1178 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        
 call privload_early_inject 

        jmp unexpected_return
       
# 1190 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global xfer_to_new_libdr 
.hidden xfer_to_new_libdr 
.type xfer_to_new_libdr, %function
xfer_to_new_libdr:

        mov rax, rdi
        mov rbx, rsi

        mov rdi, rdx
        mov rsi, rcx

        mov rsp, rbx
        jmp rax
       







        .align 0 
.global dynamorio_sigreturn 
.hidden dynamorio_sigreturn 
.type dynamorio_sigreturn, %function
dynamorio_sigreturn:




        mov eax, 0xf

        mov r10, rcx
        syscall
# 1234 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        jmp unexpected_return
       







        .align 0 
.global dynamorio_sys_exit 
.hidden dynamorio_sys_exit 
.type dynamorio_sys_exit, %function
dynamorio_sys_exit:
# 1283 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        mov edi, 0
        mov eax, 60
        mov r10, rcx
        syscall
# 1296 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
dynamorio_sys_exit_failed:
        jmp unexpected_return
       






        .align 0 
.global dynamorio_condvar_wake_and_jmp 
.hidden dynamorio_condvar_wake_and_jmp 
.type dynamorio_condvar_wake_and_jmp, %function
dynamorio_condvar_wake_and_jmp:



        mov r12, rcx
        mov r9, 0
        mov r8, 0
        mov rcx, 0
        mov rdx, 0x7fffffff
        mov rsi, 1
        mov rdi, rax
        mov rax, 202
        mov r10, rcx
        syscall
        jmp r12
# 1370 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
       






        .align 0 
.global dynamorio_sys_exit_group 
.hidden dynamorio_sys_exit_group 
.type dynamorio_sys_exit_group, %function
dynamorio_sys_exit_group:

        mov edi, 0



        mov eax, 231

        mov r10, rcx
        syscall
# 1403 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        jmp unexpected_return
       
# 1431 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global main_signal_handler 
.hidden main_signal_handler 
.type main_signal_handler, %function
main_signal_handler:


        mov rcx, rsp
        jmp main_signal_handler_C
# 1469 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
       
# 1565 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global dynamorio_clone 
.hidden dynamorio_clone 
.type dynamorio_clone, %function
dynamorio_clone:




        sub rsi, 8
        mov [rsi], r9

        mov r10, rcx
        mov rax, 56
        syscall
# 1595 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        cmp rax, 0
        jne dynamorio_clone_parent
        pop rcx
        call rcx

        jmp unexpected_return
dynamorio_clone_parent:







        ret
       
# 1674 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global back_from_native_retstubs 
.hidden back_from_native_retstubs 
.type back_from_native_retstubs, %function
back_from_native_retstubs:




        .byte 0x6a 
 .byte 0x0 

        jmp short Lback_from_native
        .byte 0x6a 
 .byte 0x1 

        jmp short Lback_from_native
        .byte 0x6a 
 .byte 0x2 

        jmp short Lback_from_native
        .byte 0x6a 
 .byte 0x3 

        jmp short Lback_from_native
        .byte 0x6a 
 .byte 0x4 

        jmp short Lback_from_native
        .byte 0x6a 
 .byte 0x5 

        jmp short Lback_from_native
        .byte 0x6a 
 .byte 0x6 

        jmp short Lback_from_native
        .byte 0x6a 
 .byte 0x7 

        jmp short Lback_from_native
        .byte 0x6a 
 .byte 0x8 

        jmp short Lback_from_native
        .byte 0x6a 
 .byte 0x9 

        jmp short Lback_from_native
.global back_from_native_retstubs_end 
.hidden back_from_native_retstubs_end



back_from_native_retstubs_end:
       






        .align 0 
.global back_from_native 
.hidden back_from_native 
.type back_from_native, %function
back_from_native:


Lback_from_native:





        lea rsp, [rsp + (- ((32)*(64)) - ((8)*(8)) - 48)] 
 push 0 
 pushfq 
 push r15 
 push r14 
 push r13 
 push r12 
 push r11 
 push r10 
 push r9 
 push r8 
 push rax 
 push rcx 
 push rdx 
 push rbx 
 
 push rsp 
 push rbp 
 push rsi 
 push rdi 
 lea rax, [rsp] 
 
 mov rdi, rax 
 call get_simd_vals 
 
 lea rax, [(18*8 + 48 + ((32)*(64)) + ((8)*(8))) + rsp] 
 mov [(3*8) + rsp], rax
        lea rax, [rsp]






        and rsp, -16

        
 mov rdi, rax 
 call return_from_native 


        jmp unexpected_return
       
# 1745 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global native_plt_call 
.hidden native_plt_call 
.type native_plt_call, %function
native_plt_call:
        lea rsp, [rsp + (- ((32)*(64)) - ((8)*(8)) - 48)] 
 push 0 
 pushfq 
 push r15 
 push r14 
 push r13 
 push r12 
 push r11 
 push r10 
 push r9 
 push r8 
 push rax 
 push rcx 
 push rdx 
 push rbx 
 
 push rsp 
 push rbp 
 push rsi 
 push rdi 
 lea rax, [rsp] 
 
 mov rdi, rax 
 call get_simd_vals 
 
 lea rax, [(18*8 + 48 + ((32)*(64)) + ((8)*(8))) + rsp] 
 mov [(3*8) + rsp], rax
        lea rax, [rsp]

        mov rcx, r11




        
 mov rsi, rcx 
 mov rdi, rax 
 call native_module_callout 



        pop rdi 
 pop rsi 
 pop rbp 
 pop rbx 
 pop rbx 
 pop rdx 
 pop rcx 
 pop rax 
 pop r8 
 pop r9 
 pop r10 
 pop r11 
 pop r12 
 pop r13 
 pop r14 
 pop r15 
 
 popfq 
 lea rsp, [rsp - (- ((32)*(64)) - ((8)*(8)) - 48) + 8 ]

        jmp r11



       
# 1778 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global dr_try_start 
.type dr_try_start, %function
dr_try_start:
        add rdi, 0
        jmp dr_setjmp
       



        .align 0 
.global dr_setjmp 
.hidden dr_setjmp 
.type dr_setjmp, %function
dr_setjmp:


        mov rdx, rdi
        push rdx



        
 mov rdi, rdx 
 call dr_setjmp_sigmask 




        pop rdx



        mov [ 0 + rdx], rbx
        mov [ 8 + rdx], rcx
        mov [2*8 + rdx], rdi
        mov [3*8 + rdx], rsi
        mov [4*8 + rdx], rbp
        mov [5*8 + rdx], rsp
        mov rax, [rsp]
        mov [6*8 + rdx], rax

        mov [ 7*8 + rdx], r8
        mov [ 8*8 + rdx], r9
        mov [ 9*8 + rdx], r10
        mov [10*8 + rdx], r11
        mov [11*8 + rdx], r12
        mov [12*8 + rdx], r13
        mov [13*8 + rdx], r14
        mov [14*8 + rdx], r15

        xor eax, eax
        ret
       



        .align 0 
.global dr_longjmp 
.hidden dr_longjmp 
.type dr_longjmp, %function
dr_longjmp:
        mov rax, rsi
        mov rdx, rdi

        mov rbx, [ 0 + rdx]
        mov rdi, [2*8 + rdx]
        mov rsi, [3*8 + rdx]
        mov rbp, [4*8 + rdx]
        mov rsp, [5*8 + rdx]
        mov rcx, [6*8 + rdx]
        mov [rsp], rcx
        mov rcx, [ 8 + rdx]

        mov r8, [ 7*8 + rdx]
        mov r9, [ 8*8 + rdx]
        mov r10, [ 9*8 + rdx]
        mov r11, [10*8 + rdx]
        mov r12, [11*8 + rdx]
        mov r13, [12*8 + rdx]
        mov r14, [13*8 + rdx]
        mov r15, [14*8 + rdx]

        ret
       
# 1864 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global atomic_swap 
.hidden atomic_swap 
.type atomic_swap, %function
atomic_swap:
        mov rax, rsi
        mov rcx, rdi
        xchg [rcx], eax
        ret
       




        .align 0 
.global cpuid_supported 
.hidden cpuid_supported 
.type cpuid_supported, %function
cpuid_supported:
        pushfq
        pop rax
        mov ecx, eax
        xor eax, 0x200000
        push rax
        popfq
        pushfq
        pop rax
        cmp ecx, eax
        mov eax, 0
        setne al
        push rcx
        popfq
        ret
       





        .align 0 
.global our_cpuid 
.hidden our_cpuid 
.type our_cpuid, %function
our_cpuid:
        mov rax, rdi



        mov rcx, rdx
        mov rdx, rsi
        push rbx
        push rdi

        mov rdi, rax
        mov rax, rdx
        cpuid
        mov [ 0 + rdi], eax
        mov [ 4 + rdi], ebx
        mov [ 8 + rdi], ecx
        mov [12 + rdi], edx
        pop rdi
        pop rbx
        ret
       




        .align 0 
.global dr_stmxcsr 
.hidden dr_stmxcsr 
.type dr_stmxcsr, %function
dr_stmxcsr:
        mov rax, rdi
        stmxcsr [rax]
        ret
       




        .align 0 
.global dr_xgetbv 
.hidden dr_xgetbv 
.type dr_xgetbv, %function
dr_xgetbv:
        mov rax, rdi
        mov rdx, rsi
        push rax
        push rdx
        mov ecx, 0

        .byte 0x0f 
 .byte 0x01 
 .byte 0xd0 

        pop rcx
        mov dword ptr [rcx], eax
        pop rcx
        mov dword ptr [rcx], edx
        ret
       




        .align 0 
.global dr_fxsave 
.hidden dr_fxsave 
.type dr_fxsave, %function
dr_fxsave:
        mov rax, rdi


        .byte 0x48 
 .byte 0x0f 
 .byte 0xae 
 .byte 0x00 




        fnclex
        finit
        ret
       




        .align 0 
.global dr_fnsave 
.hidden dr_fnsave 
.type dr_fnsave, %function
dr_fnsave:
        mov rax, rdi

        fnsave [rax]
        fwait
        ret
       




        .align 0 
.global dr_fxrstor 
.hidden dr_fxrstor 
.type dr_fxrstor, %function
dr_fxrstor:
        mov rax, rdi


        .byte 0x48 
 .byte 0x0f 
 .byte 0xae 
 .byte 0x08 




        ret
       




        .align 0 
.global dr_frstor 
.hidden dr_frstor 
.type dr_frstor, %function
dr_frstor:
        mov rax, rdi
        frstor [rax]
        ret
       





        .align 0 
.global dr_fxsave32 
.hidden dr_fxsave32 
.type dr_fxsave32, %function
dr_fxsave32:
        mov rax, rdi
        fxsave [rax]
        fnclex
        finit
        ret
       




        .align 0 
.global dr_fxrstor32 
.hidden dr_fxrstor32 
.type dr_fxrstor32, %function
dr_fxrstor32:
        mov rax, rdi
        fxrstor [rax]
        ret
       
# 2212 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global get_xmm_caller_saved 
.hidden get_xmm_caller_saved 
.type get_xmm_caller_saved, %function
get_xmm_caller_saved:
        mov rax, rdi
        movups [rax + 0*64], xmm0
        movups [rax + 1*64], xmm1
        movups [rax + 2*64], xmm2
        movups [rax + 3*64], xmm3
        movups [rax + 4*64], xmm4
        movups [rax + 5*64], xmm5

        movups [rax + 6*64], xmm6
        movups [rax + 7*64], xmm7


        movups [rax + 8*64], xmm8
        movups [rax + 9*64], xmm9
        movups [rax + 10*64], xmm10
        movups [rax + 11*64], xmm11
        movups [rax + 12*64], xmm12
        movups [rax + 13*64], xmm13
        movups [rax + 14*64], xmm14
        movups [rax + 15*64], xmm15

        ret
       







        .align 0 
.global get_ymm_caller_saved 
.hidden get_ymm_caller_saved 
.type get_ymm_caller_saved, %function
get_ymm_caller_saved:
        mov rax, rdi
# 2259 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .byte 0xc5 
 .byte 0xfe 
 .byte 0x7f 
 .byte 0x00 

        .byte 0xc5 
 .byte 0xfe 
 .byte 0x7f 
 .byte 0x48 
 .byte 0x40 

        .byte 0xc5 
 .byte 0xfe 
 .byte 0x7f 
 .byte 0x90 
 .byte 0x80 
 .byte 0x00 
 .byte 0x00 
 .byte 0x00 

        .byte 0xc5 
 .byte 0xfe 
 .byte 0x7f 
 .byte 0x98 
 .byte 0xc0 
 .byte 0x00 
 .byte 0x00 
 .byte 0x00 

        .byte 0xc5 
 .byte 0xfe 
 .byte 0x7f 
 .byte 0xa0 
 .byte 0x00 
 .byte 0x01 
 .byte 0x00 
 .byte 0x00 

        .byte 0xc5 
 .byte 0xfe 
 .byte 0x7f 
 .byte 0xa8 
 .byte 0x40 
 .byte 0x01 
 .byte 0x00 
 .byte 0x00 






        .byte 0xc5 
 .byte 0xfe 
 .byte 0x7f 
 .byte 0xb0 
 .byte 0x80 
 .byte 0x01 
 .byte 0x00 
 .byte 0x00 

        .byte 0xc5 
 .byte 0xfe 
 .byte 0x7f 
 .byte 0xb8 
 .byte 0xc0 
 .byte 0x01 
 .byte 0x00 
 .byte 0x00 

# 2283 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .byte 0xc5 
 .byte 0x7e 
 .byte 0x7f 
 .byte 0x80 
 .byte 0x00 
 .byte 0x02 
 .byte 0x00 
 .byte 0x00 

        .byte 0xc5 
 .byte 0x7e 
 .byte 0x7f 
 .byte 0x88 
 .byte 0x40 
 .byte 0x02 
 .byte 0x00 
 .byte 0x00 

        .byte 0xc5 
 .byte 0x7e 
 .byte 0x7f 
 .byte 0x90 
 .byte 0x80 
 .byte 0x02 
 .byte 0x00 
 .byte 0x00 

        .byte 0xc5 
 .byte 0x7e 
 .byte 0x7f 
 .byte 0x98 
 .byte 0xc0 
 .byte 0x02 
 .byte 0x00 
 .byte 0x00 

        .byte 0xc5 
 .byte 0x7e 
 .byte 0x7f 
 .byte 0xa0 
 .byte 0x00 
 .byte 0x03 
 .byte 0x00 
 .byte 0x00 

        .byte 0xc5 
 .byte 0x7e 
 .byte 0x7f 
 .byte 0xa8 
 .byte 0x40 
 .byte 0x03 
 .byte 0x00 
 .byte 0x00 

        .byte 0xc5 
 .byte 0x7e 
 .byte 0x7f 
 .byte 0xb0 
 .byte 0x80 
 .byte 0x03 
 .byte 0x00 
 .byte 0x00 

        .byte 0xc5 
 .byte 0x7e 
 .byte 0x7f 
 .byte 0xb8 
 .byte 0xc0 
 .byte 0x03 
 .byte 0x00 
 .byte 0x00 



        ret
       






        .align 0 
.global get_zmm_caller_saved 
.hidden get_zmm_caller_saved 
.type get_zmm_caller_saved, %function
get_zmm_caller_saved:
        mov rax, rdi
# 2319 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .byte 0x62 
 .byte 0xf1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x00 

        .byte 0x62 
 .byte 0xf1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x48 
 .byte 0x01 

        .byte 0x62 
 .byte 0xf1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x50 
 .byte 0x02 

        .byte 0x62 
 .byte 0xf1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x58 
 .byte 0x03 

        .byte 0x62 
 .byte 0xf1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x60 
 .byte 0x04 

        .byte 0x62 
 .byte 0xf1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x68 
 .byte 0x05 

        .byte 0x62 
 .byte 0xf1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x70 
 .byte 0x06 

        .byte 0x62 
 .byte 0xf1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x78 
 .byte 0x07 

# 2353 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .byte 0x62 
 .byte 0x71 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x40 
 .byte 0x08 

        .byte 0x62 
 .byte 0x71 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x48 
 .byte 0x09 

        .byte 0x62 
 .byte 0x71 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x50 
 .byte 0x0a 

        .byte 0x62 
 .byte 0x71 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x58 
 .byte 0x0b 

        .byte 0x62 
 .byte 0x71 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x60 
 .byte 0x0c 

        .byte 0x62 
 .byte 0x71 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x68 
 .byte 0x0d 

        .byte 0x62 
 .byte 0x71 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x70 
 .byte 0x0e 

        .byte 0x62 
 .byte 0x71 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x78 
 .byte 0x0f 

        .byte 0x62 
 .byte 0xe1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x40 
 .byte 0x10 

        .byte 0x62 
 .byte 0xe1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x48 
 .byte 0x11 

        .byte 0x62 
 .byte 0xe1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x50 
 .byte 0x12 

        .byte 0x62 
 .byte 0xe1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x58 
 .byte 0x13 

        .byte 0x62 
 .byte 0xe1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x60 
 .byte 0x14 

        .byte 0x62 
 .byte 0xe1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x68 
 .byte 0x15 

        .byte 0x62 
 .byte 0xe1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x70 
 .byte 0x16 

        .byte 0x62 
 .byte 0xe1 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x78 
 .byte 0x17 

        .byte 0x62 
 .byte 0x61 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x40 
 .byte 0x18 

        .byte 0x62 
 .byte 0x61 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x48 
 .byte 0x19 

        .byte 0x62 
 .byte 0x61 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x50 
 .byte 0x1a 

        .byte 0x62 
 .byte 0x61 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x58 
 .byte 0x1b 

        .byte 0x62 
 .byte 0x61 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x60 
 .byte 0x1c 

        .byte 0x62 
 .byte 0x61 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x68 
 .byte 0x1d 

        .byte 0x62 
 .byte 0x61 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x70 
 .byte 0x1e 

        .byte 0x62 
 .byte 0x61 
 .byte 0xfe 
 .byte 0x48 
 .byte 0x7f 
 .byte 0x78 
 .byte 0x1f 


        ret
       






        .align 0 
.global get_opmask_caller_saved 
.hidden get_opmask_caller_saved 
.type get_opmask_caller_saved, %function
get_opmask_caller_saved:
        mov rax, rdi
# 2399 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .byte 0xc5 
 .byte 0xf8 
 .byte 0x91 
 .byte 0x00 

        .byte 0xc5 
 .byte 0xf8 
 .byte 0x91 
 .byte 0x48 
 .byte 0x08 

        .byte 0xc5 
 .byte 0xf8 
 .byte 0x91 
 .byte 0x50 
 .byte 0x10 

        .byte 0xc5 
 .byte 0xf8 
 .byte 0x91 
 .byte 0x58 
 .byte 0x18 

        .byte 0xc5 
 .byte 0xf8 
 .byte 0x91 
 .byte 0x60 
 .byte 0x20 

        .byte 0xc5 
 .byte 0xf8 
 .byte 0x91 
 .byte 0x68 
 .byte 0x28 

        .byte 0xc5 
 .byte 0xf8 
 .byte 0x91 
 .byte 0x70 
 .byte 0x30 

        .byte 0xc5 
 .byte 0xf8 
 .byte 0x91 
 .byte 0x78 
 .byte 0x38 

        ret
       





        .align 0 
.global hashlookup_null_handler 
.hidden hashlookup_null_handler 
.type hashlookup_null_handler, %function
hashlookup_null_handler:
# 2425 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        jmp qword ptr [rip + hashlookup_null_target]

       





.global safe_read_asm_pre 
.hidden safe_read_asm_pre
.global safe_read_asm_mid 
.hidden safe_read_asm_mid
.global safe_read_asm_post 
.hidden safe_read_asm_post
.global safe_read_asm_recover 
.hidden safe_read_asm_recover
# 2450 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
        .align 0 
.global safe_read_asm 
.hidden safe_read_asm 
.type safe_read_asm, %function
safe_read_asm:
       

        mov rcx, rsi 
 and rcx, (8 - 1) 
 jz safe_read_asm_aligned 
 neg rcx 
 add rcx, 8 
 cmp rdx, rcx 
 cmovb rcx, rdx 
 sub rdx, rcx 
safe_read_asm_pre: 
 rep movsb 
safe_read_asm_aligned: 
 
 mov rcx, rdx 
 shr rcx, 3 
safe_read_asm_mid: 
 rep movsq 
 
 mov rcx, rdx 
 and rcx, (8 - 1) 
safe_read_asm_post: 
 rep movsb
safe_read_asm_recover:
        mov rax, rsi
       
        ret
       


.global safe_read_tls_magic 
.hidden safe_read_tls_magic
.global safe_read_tls_magic_recover 
.hidden safe_read_tls_magic_recover
.global safe_read_tls_self 
.hidden safe_read_tls_self
.global safe_read_tls_self_recover 
.hidden safe_read_tls_self_recover
.global safe_read_tls_app_self 
.hidden safe_read_tls_app_self
.global safe_read_tls_app_self_recover 
.hidden safe_read_tls_app_self_recover

        .align 0 
.global safe_read_tls_magic 
.hidden safe_read_tls_magic 
.type safe_read_tls_magic, %function
safe_read_tls_magic:



        gs
        mov eax, dword ptr [96]
safe_read_tls_magic_recover:

        ret
       

        .align 0 
.global safe_read_tls_self 
.hidden safe_read_tls_self 
.type safe_read_tls_self, %function
safe_read_tls_self:

        gs
        mov rax, qword ptr [88]
safe_read_tls_self_recover:

        ret
       

        .align 0 
.global safe_read_tls_app_self 
.hidden safe_read_tls_app_self 
.type safe_read_tls_app_self, %function
safe_read_tls_app_self:

        fs
        mov rax, qword ptr [16]
safe_read_tls_app_self_recover:

        ret
       






        .align 0 
.global _dynamorio_runtime_resolve 
.hidden _dynamorio_runtime_resolve 
.type _dynamorio_runtime_resolve, %function
_dynamorio_runtime_resolve:


        push rax
        push rdi
        push rsi
        push rdx
        push rcx
        push r8
        push r9


        mov rdi, [rsp + 7 * 8]
        mov rsi, [rsp + 8 * 8]
        
 call dynamorio_dl_fixup 

        mov r11, rax

        pop r9
        pop r8
        pop rcx
        pop rdx
        pop rsi
        pop rdi
        pop rax

        add rsp, 16
        jmp r11
# 2551 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"
       
# 2724 "/home/rose/scarab/src/deps/dynamorio/core/arch/x86/x86.asm"

