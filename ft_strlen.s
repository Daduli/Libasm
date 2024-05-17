global ft_strlen

section .text

;size_t    ft_strlen(const char *s)
;Where const char *s = RDI

ft_strlen:
  xor rax, rax            ;Initialize the counter (int i = 0)
  jmp count               ;Go to count

count:
  cmp BYTE [rdi + rax], 0 ;Compare current position character with '\0' 
  jne increment           ;If different, go to increment (str[i] != '\0')
  ret                     ;Return the function

increment:
  inc rax                 ;Increment the counter by one (i++)
  jmp count               ;Go back to count