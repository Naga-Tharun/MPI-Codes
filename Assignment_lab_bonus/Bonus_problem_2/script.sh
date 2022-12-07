nasm -felf64 add.asm
nasm -felf64 subtract.asm
nasm -felf64 multiply.asm
nasm -felf64 divide.asm
gcc -S arithmetic.c
as arithmetic.s -o arithmetic.o
gcc add.o subtract.o multiply.o divide.o arithmetic.o -o output
./output