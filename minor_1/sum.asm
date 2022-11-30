global sum
section .text
sum:
    mov rax, $0
    mov rbx, $0
    mov rcx, rdi
    mov rdx, rsi
a_2:
    cmp rdi, $0
    je reset_a
    add rax, rcx
    sub rdi, $1
    cmp rdi, $0
    jg a_2
reset_a:
    mov rdi, rcx
    mov rcx, $0
a_3:
    cmp rdi, $0
    je b_2
    add rcx, rax
    sub rdi, $1
    cmp rdi, $0
    jg a_3
b_2:
    cmp rsi, $0
    je reset_b
    add rbx, rdx
    sub rsi, $1
    cmp rsi, $0
    jg b_2
reset_b:
    mov rsi, rdx
    mov rdx, $0
b_3:
    cmp rsi, $0
    je final_add
    add rdx, rbx
    sub rsi, $1
    cmp rsi, $0
    jg b_3
final_add:
    mov rax, $0
    add rax, rcx
    add rax, rdx
return:
    ret
