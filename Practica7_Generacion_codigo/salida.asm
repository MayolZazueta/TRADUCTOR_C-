.386
.model flat, stdcall
option casemap:none
include \masm32\macros\macros.asm
include \masm32\include\masm32.inc
include \masm32\include\kernel32.inc
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\kernel32.lib

.data
x dword 0
a dword 0
b dword 0
regresa dword 0
a dword 0

.code
multiplicacion:
print str$(eax)
print chr$(10)
exit
end multiplicacion
main:
push a
push b
pop ebx
pop eax
xor edx,edx
imul ebx
push eax
pop eax
mov c, eax
push a
pop eax
mov regresa, eax
ret
print str$(eax)
print chr$(10)
exit
end main
