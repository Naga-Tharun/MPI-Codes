global multiply
section .text

multiply:
    xor rax, rax;   making the return value rax = 0
    mov rax, rdi;   rax = rdi
    imul rax, rsi;  rax = rax * rsi

return:
    ret;            return rax the product and terminate