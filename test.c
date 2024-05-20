#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>
#include <errno.h>

size_t    ft_strlen(const char *s);
char *ft_strcpy(char *dst, const char *src);
int ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t count);

int main()
{
   char *msg = "Hello World!\n";

   printf("LIB: %ld | ", write(1, msg, ft_strlen(msg)));
   printf("errno: %s\n", strerror(errno));
   printf("FT: %ld | ", ft_write(1, msg, ft_strlen(msg)));
   printf("errno: %s\n", strerror(errno));
}