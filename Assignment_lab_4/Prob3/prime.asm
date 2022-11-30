global prime
section .text
prime:
    xor rcx, rcx;   making the counting value 0
    cmp rsi, $0;    checking if size of array is 0
    je return;      if size is zero then return

checking:
    mov rax, [rdi]; moving the first element to rax
    cmp rax, $1;    check if given number is less than 2
    jle prime_1;    if less then we jump to next index
    cmp rax, $2;    checking if the number is 2
    je inc_rcx;     if number is 2 then we increase rax
    mov r8, $2;     making value of r8 to 2
    mov r9, rax;    copying rax to r9
    shr r9, $1;     finding r9/2 using shift operation
    cmp r8, r9;     checking if the loop is complete
    jg inc_rcx;     if complete then we increment the count of primes

check_prime:
    mov rax, [rdi]; making rax the present element everytime
    xor rdx, rdx;   making rdx to 0
    idiv r8;        divinding rax by r8
    cmp rdx, $0;    checking if the  remainder is 0 or not
    je prime_1;     if zero then not prime we go to next index
    inc r8;         else we increase r8 and continue
    cmp r8, r9;     if loop complete then we increase count
    jg inc_rcx;     increasing count and move to next index
    jmp check_prime;cheking the element till the loop completes

prime_1:
    dec rsi;        decrementing the size
    cmp rsi, $0;    chekcing if size is 0
    je return;      if size is 0 then return
    add rdi, $8;    going to next index by increasing address
    jmp checking;   else jump back to checking

inc_rcx:
    inc rcx;        incrementing rcx
    jmp prime_1;    going to update size and go to next index

return:
    mov rax, rcx;   the return value of number of primes in array
    ret
