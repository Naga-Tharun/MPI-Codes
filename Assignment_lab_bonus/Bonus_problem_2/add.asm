global add
section .text

add:
    xor rax, rax;   making the return value rax = 0
    mov rax, rdi;   rax = rdi
    add rax, rsi;   rax = rax + rsi

return:
    ret;            return rax the sum and terminate