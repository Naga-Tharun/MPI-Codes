global subtract
section .text

subtract:
    xor rax, rax;   making the return value rax = 0
    mov rax, rdi;   rax = rdi
    sub rax, rsi;   rax = rax - rsi

return:
    ret;            return rax the result and terminate