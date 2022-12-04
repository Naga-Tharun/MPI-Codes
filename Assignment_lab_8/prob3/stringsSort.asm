global stringsSort
section .text

stringsSort:
    mov rcx,$0;         counter for loop1, i
    mov r15,$8;
    imul r15,$8;        64
loop1:
    cmp rcx,rsi;          
    jge return;

    mov rbx,r15;        rbx store the first element to swap with         
    imul rbx,rcx;       64*rcx
    add rbx,rdi;        rdi+64*rcx

    mov rax,rbx;        make rax mini

    mov r8,rcx;         counter for loop2,j
    inc r8;             j=i+1
    loop2:
        cmp r8,rsi;
        jge swap1;

        mov r14,r15;        current    
        imul r14,r8;        64*r8
        add r14,rdi;        rdi+64*r8
        
        mov r9,$0;          counter for lexiographic
        compare:
            cmp r9,r15;
            jge break2;

            mov r10,r14;
            add r10,r9;

            mov r11,rax;
            add r11,r9;

            movzx r13,byte[r11];
            movzx r12,byte[r10];

            cmp r13, $0;
            je break2

            cmp r12,r13;
            jl swap;
            jg break2;

            inc r9;
            jmp compare;
        swap:
            mov rax,r14;
    break2:
        inc r8;
        jmp loop2;

swap1:  
    mov r11, [rax];
    mov r10, [rbx];
    mov [rax], r10;
    mov [rbx], r11;

break1:
    inc rcx;
    jmp loop1;

return:
    ret;
