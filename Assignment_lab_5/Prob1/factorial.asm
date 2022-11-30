global factorial
section .text

factorial:
    cmp rdi, $0;    comparing rdi with 0
    je return;      if rdi is 0 then go to return
recur:
    push rdi;       pushes rdi to stack
    dec rdi;        decrement rdi by 1
    call factorial; calls the factorial function
    pop rbx;        pops from stack and stores in rbx
    imul rbx;       multiplies rax with rbx
    ret;            returns rax
return:
    mov rax, $1;    make rax the return values = 1
    ret;            returns rax
