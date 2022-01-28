; Taken from Limine
section .text

global memcpy
memcpy:
    mov rcx, rdx
    mov rax, rdi
    rep movsb
    ret

global memset
memset:
    push rdi
    mov rax, rsi
    mov rcx, rdx
    rep stosb
    pop rax
    ret

global memmove
memmove:
    mov rcx, rdx
    mov rax, rdi

    cmp rdi, rsi
    ja .copy_backwards

    rep movsb
    jmp .done

  .copy_backwards:
    lea rdi, [rdi+rcx-1]
    lea rsi, [rsi+rcx-1]
    std
    rep movsb
    cld

  .done:
    ret

global memcmp
memcmp:
    mov rcx, rdx
    repe cmpsb
    jecxz .equal

    mov al, byte [rdi-1]
    sub al, byte [rsi-1]
    movsx rax, al
    jmp .done

  .equal:
    xor eax, eax

  .done:
    ret
