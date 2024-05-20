global ft_read

extern __errno_location

;ssize_t read(int fd, void *buf, size_t count)
;Where int fd = RDI, void *buf = RSI, size_t count = RDX

section .text

ft_read:
  mov rax, 0    ;Set the value of RAX to write
  syscall
  test rax, rax ;Perform an AND operation on RAX
  js error      ;If RAX is signed, go to error
  ret

error:
  neg rax       ;Get the absolute value of RAX
  mov rdi, rax
  call __errno_location wrt ..plt
  mov [rax], rdi
  mov rax, -1
  ret