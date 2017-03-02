nasm -f elf32 -o $1.o $1.asm
gcc -nostdlib --static -m32 $1.o -o $1
rm $1.o
