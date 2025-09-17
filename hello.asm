section .data
    msg db "Hello, Assembly on Ubuntu!", 0xa
    len equ $ - msg         ; string ki length nikal li

section .text
    global _start           ; entry point define

_start:
    ; write system call (rax=1)
    mov rax, 1              ; syscall number (sys_write)
    mov rdi, 1              ; file descriptor 1 = stdout
    mov rsi, msg            ; address of string
    mov rdx, len            ; string length
    syscall                 ; kernel call

    ; exit system call (rax=60)
    mov rax, 60             ; syscall number (sys_exit)
    xor rdi, rdi            ; exit code 0
    syscall
