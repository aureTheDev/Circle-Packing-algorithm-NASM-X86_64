extern printf
extern rdrand
extern randomize

global main

section .data
    reste_msg: db "reste: %d", 10, 0

section .bss
    random_var: resq 1    

section .text
main:
    call randomize
    mov word[random_var], ax

    mov rdi, reste_msg
    mov rsi, [random_var]
    mov rax, 0
    call printf

