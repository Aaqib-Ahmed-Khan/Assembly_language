section .data
    msg db "This is my 2nd Assembly program!", 0xa
    len equ $ - msg

section .text
    global _start

_start:
    ; write syscall
    mov rax, 1          ; syscall number: write
    mov rdi, 1          ; file descriptor (stdout)
    mov rsi, msg        ; string ka address
    mov rdx, len        ; string ki length
    syscall

    ; exit syscall
    mov rax, 60         ; syscall number: exit
    xor rdi, rdi        ; exit code 0
    syscall
