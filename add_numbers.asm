section .data
    msg db "2 + 1 = ", 0
    res db 0

section .text
    global _start

_start:
    mov al, 2
    add al, 1
    add al, '0'
    mov [res], al

    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 7
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, res
    mov rdx, 1
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall
