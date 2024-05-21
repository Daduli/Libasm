global ft_strdup

extern malloc
extern ft_strlen
extern ft_strcpy

;char *strdup(const char *s)
;Where const char *s = RDI

section .text

ft_strdup:
  call ft_strlen wrt ..plt
  add rax, 1
  push rdi
  mov rdi, rax
  call malloc wrt ..plt
  pop rbx
  mov rdi, rax
  mov rsi, rbx
  call ft_strcpy wrt ..plt
  ret
