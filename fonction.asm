extern rdrand

global randomize
randomize:
    generate_random:
        xor r10, r10
        rdrand r10
        jc random_success
        jmp generate_random

    random_success:
        xor ax, ax
        xor dx, dx
        mov cx, 601
        mov ax, r10w
        div cx
    
    cmp dx, 0
    je generate_random
    mov rax, rdx

ret