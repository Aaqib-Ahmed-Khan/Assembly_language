#!/bin/bash
file=$1
name="${file%.*}"

nasm -f elf64 "$file" -o "$name.o" &&
ld "$name.o" -o "$name" &&
./"$name"
