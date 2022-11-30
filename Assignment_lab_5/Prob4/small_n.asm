global small_n
section .text

small_n:
    cmp rsi, $1;    compare rsi with 1
    je return;      if rsi = 1 jump to return
find_small:
    mov r8, [rdi];  moving element in rdi to r8
    push r8;        push r8 to stack
    add rdi, $8;    going to next index in the array
    dec rsi;        reduce the size by 1
    call small_n;   recursion call for small_n
    pop rbx;        pop element from stack and store in rbx
    cmp rax, rbx;   compare rax and rbx
    jg update;      if rax > rbx then update rax
    ret;            return rax
update:
    mov rax, rbx;   updates rax by moving rbx to rax
    ret;            return rax
return:
    mov rax, [rdi]; stores element at rdi in rax
    ret;            return rax