bits 32
section .text

global start
extern kernel

start:
  cli
  mov esp, stack_space
  call kernel
  hlt

section .bss
resb 8192
stack_space: