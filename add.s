BITS 64

global _start

section .text  

_start:
    mov rax, 10
    mov rdi, 20
    call operation
    jmp _exit

operation:
    add rdi, rax
    ret

_exit:
    mov rax, 60
    mov rdi, 0
    syscall