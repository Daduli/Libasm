global ft_strcpy

section .text

ft_strcpy:
  xor rcx, rcx          ;Initialize the counter (int i = 0)
  jmp copy              ;Go to copy

copy:
  mov  rax, [rsi + rcx] ;Save the current character to copy (tmp[i] = src[i])
  mov  [rdi + rcx], rax ;Copy the character into the current position (dst[i] = tmp[i])
  cmp rax, 0            ;Check if the current character is '\0' 
  jnz increment         ;If different, go to increment (tmp[i] != '\0')
  jz exit               ;Else go to exit

increment:
  inc ecx              ;Increment the counter by one (i++)
  jmp copy             ;Go to copy

exit:
  mov rax, rdi         ;Copy dst into our return value
  ret                  ;Return the function