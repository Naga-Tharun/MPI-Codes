global series
section .text
series:
    cmp rdi, $0;    comaring if size is 0 or not
    je inc_1;       if size is 0 then we return 1
    mov rdx, rsi;   moving 1st argument to rdx
    inc rdx;        incrementing rdx making it to 1+x
multiply:
    dec rdi;        decrementing the n
    cmp rdi, $0;    checking if n is 0 or not
    je update;      if n is zero we update return value
    imul rdx, rsi;  multiplying 1+x and x
    inc rdx;        incrementing rdx with 1
    jmp multiply;   looping till we reach n to 0

update:
    mov rax, rdx;   making the rretun value to the sum of series
    jmp return;     returning after finding the sum

inc_1:
    xor rax, rax;   making return value to 0
    inc rax;        incrementing return value to 1
    jmp return;     finally returining 1

return:
    ret
