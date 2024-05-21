global ft_write

extern __errno_location

;ssize_t write(int fd, const void *buf, size_t count)
;Where int fd = RDI, const void *buf = RSI, size_t count = RDX

section .text


ft_write:
  mov rax, 1    ;Set the value of RAX to write
  syscall 
  test rax, rax ;Perform an AND operation on RAX
  js error      ;If RAX is signed, go to error
  ret 

error:
  neg rax      ;Get the absolute value of RAX
  mov rdi, rax 
  call __errno_location wrt ..plt 
  mov [rax], rdi 
  mov rax, -1
  ret