global minimum
section .text
minimum:
    cmp rsi, $0;    comparing the size of array with 0
    je return;      if size is 0 then we return 
    mov rax, [rdi]; moving the 1st argument to the return value
    dec rsi;        decrementing size after each iteration

continue:
    add rdi, $8;    going to the next element in the array for comparing
    cmp rax, [rdi]; comparing the previous element and the present element
    jl update;      if the new element is less than min we update the min
    mov rax, [rdi];

update:
    dec rsi;        reducing the size
    cmp rsi, $0;    compring the size to 0 
    jne continue;   if size != 0 then continue with search for minimum

return:
    ret
