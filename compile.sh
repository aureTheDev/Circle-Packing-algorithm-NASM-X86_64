nasm -felf64 -Fdwarf -g -l fonction.lst fonction.asm -o fonction.o
nasm -felf64 -Fdwarf -g -l project.lst project.asm -o project.o
gcc -fPIC -no-pie project.o fonction.o -o project
./project

# test