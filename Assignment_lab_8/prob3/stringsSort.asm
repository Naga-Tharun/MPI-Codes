global stringsSort
section .text

stringsSort:

    ; ignore for debugging
    ; comment these statements
    mov r8, rsi;
    mov r11, $8;
    imul r11, $8;
    mov r9, rsi;
    add r9, r11;
    mov r10, [r9];
    cmp [r8], r10;
    jl return;
    mov r12, [r8];
    mov r13, [r9];
    mov [r8], r13;
    mov [r9], r12;
    ret;
    ; debug

    cmp rdi, $1;        check if size of the list of strings is 1 or 0
    jle return;          if <= 1 then return
    mov r8, rsi;
    mov r11, $8;
    imul r11, $8;
    mov r9, rsi;
    add r9, r11;
    mov r12, rdi;
    dec r12;
    mov r10, [r8];
    mov r13, r8;

checkMin:
    mov rsi, [r9];
    cmp r10, rsi;
    jg store;
    dec r12;
    cmp r12, $0;
    je nextIndex;
    add r9, r11;
    jmp checkMin;

nextIndex:
    mov r14, [r8];
    mov r15, [r13];
    mov [r8], r15;
    mov [r13], r14;
    dec rdi;
    cmp rdi, $1;
    je return;
    add r8, r11;
    mov r10, [r8];
    mov r13, r8;
    mov r9, r8;
    add r9, r11;
    mov r12, rdi;
    dec r12;
    jmp checkMin;

store:
    mov r10, [r9];
    mov r13, r9;
    dec r12;
    cmp r12, $0;
    je nextIndex;
    add r9, r11;
    jmp checkMin;

return:
    ret;