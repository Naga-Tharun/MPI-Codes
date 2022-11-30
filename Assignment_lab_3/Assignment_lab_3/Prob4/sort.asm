global sort
section .text
sort:
    cmp rsi, $1;    compares size with 1
    jle return;     if size is <= 1 then return
    dec rsi;        reducing the size by 1
    mov rax, rsi;   making return value to size
    imul rax, rax;
    xor r8, r8;     making r8 to 0
    xor r9, r9;     making r9 to 0

checking:
    xor r10, r10;   making r10 to 0
    inc r10;        helps for indexing
    imul r10, r8;
    imul r10, $8;   the index address
    add rdi, r10;
    mov rdx, [rdi]; moving array to rdx
    add rdi, $8;
    mov rcx, [rdi]; the 2 elements for comparing
    sub rdi, $8;
    inc r8;
    inc r9;
    cmp rdx, rcx;   comparing r8 and r9
    jg swapping;    if r8 is greater then swap
    cmp r9, rax;
    je return;
    cmp r8, rsi;
    je initial;
    sub rdi, r10;
    jmp checking;

swapping:
    mov rdx, [rdi]; swapping the 2 elements
    add rdi, $8;
    mov rcx, [rdi];
    mov [rdi], rdx;
    sub rdi, $8;
    mov [rdi], rcx;
    cmp r9, rax;    checking if all sorted
    je return;
    cmp r8, rsi;    checking if we reached end of array
    je initial;
    sub rdi, r10;   making rdi to go to the present position
    jmp checking;

initial:
    xor r8, r8;     making r8 to 0
    sub rdi, r10;   bringing index to start
    jmp checking;

return:
    ret
