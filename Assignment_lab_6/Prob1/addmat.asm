global addmat
section .text
addmat:
    cmp rdx, $0;    compare rdx with 0
    je return;      if rdx = 0 then go to return
    mov rax, rdx;   moving rdx value to rax
    imul rdx;       multiplying rax with rdx to make it n^2

add_process:
    mov rbx, [rdi];  making rbx = [rdi]
    add rbx, [rsi];  adding [rsi] to rbx
    mov [rdi], rbx;  moving rbx to [rdi]

check_size:
    dec rax;        decrementing the rax
    cmp rax, $0;    checking if the whole matrix is added
    je return;      if rax = 0 then return
    add rdi, $8;    moving to next address in rdi
    add rsi, $8;    moving to next address in rsi
    jmp add_process;else jump to add_process and continue the loop

return:
    ret;            return the rax and terminate