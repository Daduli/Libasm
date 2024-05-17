global ft_strcmp

section .text

;int ft_strcmp(const char *s1, const char *s2)
;Where const char *s1 = RDI, const char *s2 = RSI


ft_strcmp:
  xor rcx, rcx        ;Initialize the counter (int i = 0)
  jmp compare         ;Go to compare

compare:
  mov al, [rdi + rcx] ;Save current postion character of s1 (char s1_tmp = s1[i])
  mov bl, [rsi + rcx] ;Save current postion character of s2 (char s2_tmp = s2[i])
  cmp al, 0           ;Check if s1_tmp is '\0' (s1_tmp != '\0')
  je exit             ;If so, go to exit
  cmp bl, 0           ;Check if s2_tmp is '\0' (s2_tmp != '\0')
  je exit             ;If so, go to exit
  cmp al, bl          ;Compare s1_tmp with s2_tmp (s1_tmp != s2_tmp)
  jne exit            ;If they're diffent, go to exit
  inc rcx             ;Increment the counter (i++)
  jmp compare         ;Go to compare

exit:
  movzx rax, al       ;Convert the 8-bits register into the 64-bits register
  movzx rbx, bl       ;Same here
  sub rax, rbx        ;Substract s2_tmp from s1_tmp
  ret                 ;Return the function
