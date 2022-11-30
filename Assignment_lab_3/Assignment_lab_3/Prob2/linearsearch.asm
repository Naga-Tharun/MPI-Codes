global linearsearch
section .text
linearsearch:
    xor rax, rax;   making the return value 0
    not rax;        making the return value -1 incase if we do not find the element
    mov rcx, $0;    making rcx = 0
    cmp rsi, $0;    comparing the 2nd argument with 0
    jle return;     returns if rci is 0 

find_index:
    inc rcx;        making rcx to 1
    cmp rdx, [rdi]; comparing 3rd argument and first element in array 1st argument
    je found;       if rdx = [rdi] then we found the element
    add rdi, $8;    adding 8 to rdi address because it is long int
    cmp rcx, rsi;   comparing rcx with rsi
    jl find_index;  if rcx < rsi then we search the key from next element in array
    jmp return;     if rcx = rsi then we return because we covered the array

found:
    mov rax, rcx;   making the return value update to key

return:
    ret
