global ft_strcpy

section .text

;char *ft_strcpy(char *dst, const char *src)
;Where char *dst = RDI, const char *src = RSI

ft_strcpy:
  xor rcx, rcx          ;Initialize the counter (int i = 0)
  jmp copy

copy:
  mov  al, [rsi + rcx] ;Save the current character to copy (tmp[i] = src[i])
  mov  [rdi + rcx], al ;Copy the character into the current position (dst[i] = tmp[i])
  cmp al, 0            ;Check if the current character is '\0' 
  jnz increment        ;If different, go to increment (tmp[i] != '\0')
  jz exit              ;Else go to exit

increment:
  inc rcx              ;Increment the counter by one (i++)
  jmp copy

exit:
  mov rax, rdi         ;Copy dst into our return value
  ret