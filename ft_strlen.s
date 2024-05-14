global ft_strlen

section .text

ft_strlen:
  xor rax, rax
  jmp count

count:
  cmp BYTE [rdi + rax], 0
  jne increment
  ret
.
increment:
  inc rax
  jmp count