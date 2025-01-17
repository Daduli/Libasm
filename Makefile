NAME = libasm.a

SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
OBJS = $(SRCS:.s=.o)

ASM = nasm
ASMFLAGS = -f elf64

CC = gcc
CFLAGS = -Wall -Wextra -Werror

%.o: %.s
	$(ASM) $(ASMFLAGS) $<

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

test: $(NAME)
	$(CC) $(CFLAGS) tester.c $(NAME) -o tester
	./tester

clean:
	rm -f *o

fclean: clean
	rm -f $(NAME) tester
	
re: fclean all

.PHONY: all clean fclean re