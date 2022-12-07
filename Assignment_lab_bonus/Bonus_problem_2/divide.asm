global divide
section .text

divide:
    xor rax, rax;   making rax = 0, it stores the quotient after division
    xor rdx, rdx;   making rdx - 0, it stores the remainder after division
    mov rax, rdi;   rax = rdi, rax acts as numerator
    idiv rsi;       result = rax/rsi, here rsi is the denominator

return:
    ret;            returns rax the quotient and terminates