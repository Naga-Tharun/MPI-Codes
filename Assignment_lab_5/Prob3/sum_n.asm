global sum_n
global .text

sum_n:
    cmp rsi, $0;    compare rsi with 0
    je return;      if rsi = 0 then go to return
find_sum:
    mov r8, [rdi];  moving element from rdi to r8
    push r8;        push r8 to stack
    add rdi, $8;    going to next index in array
    dec rsi;        reducing rsi (size of array)
    call sum_n;     recursion call foor sum_n
    pop rbx;        pop element from stack and store in rbx
    add rax, rbx;   add rbx to rax
    ret;            return rax
return:
    mov rax, $0;    compare rax with 0
    ret;            return rax