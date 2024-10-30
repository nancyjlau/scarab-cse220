# 1 "/home/rose/scarab/src/deps/dynamorio/ext/drwrap/drwrap_asm_x86.asm"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/home/rose/scarab/src/deps/dynamorio/ext/drwrap/drwrap_asm_x86.asm"
# 37 "/home/rose/scarab/src/deps/dynamorio/ext/drwrap/drwrap_asm_x86.asm"
# 1 "/home/rose/scarab/src/build/opt/deps/dynamorio/cmake/cpp2asm_defines.h" 1
# 38 "/home/rose/scarab/src/deps/dynamorio/ext/drwrap/drwrap_asm_x86.asm" 2

.text





# 53 "/home/rose/scarab/src/deps/dynamorio/ext/drwrap/drwrap_asm_x86.asm"
        .align 0 
.global replace_native_xfer 
.hidden replace_native_xfer 
.type replace_native_xfer, %function
replace_native_xfer:
# 68 "/home/rose/scarab/src/deps/dynamorio/ext/drwrap/drwrap_asm_x86.asm"
        push 0
        push rax
        push rdx
        
 call replace_native_xfer_stack_adjust 

        mov ecx, eax
        pop rdx
        pop rax
        lea rsp, [ 8 + rsp ]




        mov qword ptr [-2 * 8 + rsp], 0
        mov qword ptr [-1 * 8 + rsp], 0


        sub rsp, rcx

        push rax

        push rax
        push rdx





        push rbx
        mov rbx, rsp
        and rsp, -16


        
 call replace_native_xfer_app_retaddr 

        mov qword ptr [3 * 8 + rbx], rax


        
 call replace_native_xfer_target 

        mov rcx, rax

        mov rsp, rbx
        pop rbx

        pop rdx
        pop rax




        mov qword ptr [-2 * 8 + rsp], 0
        mov qword ptr [-1 * 8 + rsp], 0
        jmp rcx

        ret
       
# 131 "/home/rose/scarab/src/deps/dynamorio/ext/drwrap/drwrap_asm_x86.asm"
.global replace_native_ret_imms 
.hidden replace_native_ret_imms
.global replace_native_ret_imms_end 
.hidden replace_native_ret_imms_end

        .align 0 
.global replace_native_rets 
.hidden replace_native_rets 
.type replace_native_rets, %function
replace_native_rets:
        ret
replace_native_ret_imms:
        ret 1 * 8
        ret 2 * 8
        ret 3 * 8
        ret 4 * 8
        ret 5 * 8
        ret 6 * 8
        ret 7 * 8
        ret 8 * 8
        ret 9 * 8
        ret 10 * 8
        ret 11 * 8
        ret 12 * 8
        ret 13 * 8
        ret 14 * 8
        ret 15 * 8
        ret 16 * 8
        ret 17 * 8
        ret 18 * 8
        ret 19 * 8
        ret 20 * 8
        ret 21 * 8
        ret 22 * 8
        ret 23 * 8
        ret 24 * 8
        ret 25 * 8
        ret 26 * 8
        ret 27 * 8
        ret 28 * 8
        ret 29 * 8
        ret 30 * 8
        ret 31 * 8
        ret 32 * 8
        ret 33 * 8
        ret 34 * 8
        ret 35 * 8
        ret 36 * 8
        ret 37 * 8
        ret 38 * 8
        ret 39 * 8
        ret 40 * 8
replace_native_ret_imms_end:
        nop
       







        .align 0 
.global replace_retaddr_sentinel 
.hidden replace_retaddr_sentinel 
.type replace_retaddr_sentinel, %function
replace_retaddr_sentinel:
        ret
       



