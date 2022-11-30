global odd
section .text
odd:
    xor rax, rax;   making the return value to 0
    cmp rsi, $0;    checking if size is zero
    je return;      if size is 0 then return 

checking:
    mov rdx, [rdi]; copying first element to register
    and rdx, $1;    checking if rdx is odd or not
    cmp rdx, $1;    checking if the element is odd
    je found;       if it is odd then an odd number is found
    dec rsi;        else reduce the size
    cmp rsi, $0;    checking if size is 0
    je return;      if size is 0 then return complete
    add rdi, $8;    going to the next element in the array
    jmp checking;   go back to checking if odd

found:
    inc rax;        increasing rax the return value if odd is found
    dec rsi;        reducing the size
    cmp rsi, $0;    checking if size is 0 or not
    je return;      if size is 0 then return completed
    add rdi, $8;    going to next index if size is not 0
    jmp checking;   continue checking for odd numbers

return:
    ret
