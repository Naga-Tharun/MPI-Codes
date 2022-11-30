global recurf
section .text

recurf:
    cmp rdi, $1;    comparing rdi with 1
    je return;      if rdi is 1 then go to return
recursion:
    push rdi;       pushes rdi to stack
    dec rdi;        decrement rdi by 1
    call recurf;    calls the recurf function
    pop rbx;        pops from stack and stores in rbx
    add rax, rbx;   add rbx to rax
    ret;            return rax
return:
    mov rax, $1;    make rax the return values = 1
    ret;            return rax