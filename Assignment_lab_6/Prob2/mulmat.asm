global mulmat
section .text
mulmat:
    cmp rcx, $0;        check if size is 0
    je return;          if size = 0 then go to return
    mov r8, rcx;        moving rcx address to r8 (result matrix)
    mov r9, rsi;        moving rsi address to r9 (1st matrix)
    mov r10, rdx;       moving rdx address to r10 (2nd matrix)
    imul r11, rcx, $8;  r11 = rcx*8
    mov r12, $0;        making r12 to 0 cell counter for every row
    mov r14, $0;        the row counter for resultant matrix
    mov r15, $0;        for keeping size

mul_process:
    mov rax, [r9];      moving element in r9 to rax
    imul rax, [r10];    multiplying rax with element at r10
    add [rdi], rax;     adding rax to element at rdi
    dec r8;             reducing r8 count of operations on each cell
    cmp r8, $0;         checking if cell operations are complete
    je cell_com;        if operations are complete go to next cell
    add r9, $8;         else go to next index in 1st matrix
    add r10, r11;       go to next index of col in 2nd matrix
    jmp mul_process;    loop the process untill operations complete for the cell

cell_com:
    mov r8, rcx;        reassign r8 = rcx
    inc r12;            increment the cell completion counter
    cmp r12, rcx;       check if cell operations of a row are complete
    je row_com;         if complete then go to next row
    add rdi, $8;        go to next index in the result matrix
    imul r15, rcx, $8;  used for moving the index in 1st matrix
    imul r15, r14;
    mov r9, rsi;        resetting 1st matrix index to starting
    add r9, r15;        updating the 1st matrix index to new row
    mov r10, rdx;       updating the 2nd matrix index to starting
    imul r13, r12, $8;  used for moving the index in 2nd matrix
    add r10, r13;       updating the index in 2nd matrix
    jmp mul_process;    go back to multiplication process of cell

row_com:
    mov r12, $0;        updating r12 to 0 for cell completion count in each row
    inc r14;            incrementing the count of rows for which multiplication is completed
    cmp r14, rcx;       checking if all rows are complete
    je return;          go to return if all rows are complete
    add rdi, $8;        else going to next index in result matrix
    add r9, $8;         going to new row in 1st index
    mov r10, rdx;       resetting index of 2nd matrix to start
    jmp mul_process;    jump back to multiplication process of thee cell

return:
    ret;                returns rax and terminates