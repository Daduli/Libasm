global ft_strdup

extern malloc
extern ft_strlen
extern ft_strcpy

;char *strdup(const char *s)
;Where const char *s = RDI

section .text

ft_strdup:
  call ft_strlen wrt ..plt
  inc rax
  push rdi ;Push RDI onto the stack to save its content
  mov rdi, rax
  call malloc wrt ..plt
  pop rbx ;Pop the content on top of the stack into RBX
  mov rdi, rax
  mov rsi, rbx
  call ft_strcpy wrt ..plt
  ret