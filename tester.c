#include <stdio.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

size_t    ft_strlen(const char *s);
char *ft_strcpy(char *dst, const char *src);
int ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t count);
ssize_t ft_read(int fd, void *buf, size_t count);
char *ft_strdup(const char *s);

int main(void)
{
   char *msg = "Testing the Assembly functions";

   printf("\e[1mTESTING FT_STRLEN\e[m\n");
   printf("String: %s\n", msg);
   printf("Library: %ld\n", strlen(msg));
   printf("Ft: %ld\n", ft_strlen(msg));

   printf("------------------------------\n");

   char *dst = malloc(strlen(msg));
   char *ft_dst = malloc(ft_strlen(msg));
   printf("\e[1mTESTING FT_STRCPY\e[m\n");
   printf("String: %s\n", msg);
   printf("Library: %s\n", strcpy(dst, msg));
   printf("Ft: %s\n", ft_strcpy(ft_dst, msg));
   free(dst);
   free(ft_dst);

   printf("------------------------------\n");

   char *compare = "Testing the C functions";
   printf("\e[1mTESTING FT_STRCMP\e[m\n");
   printf("String 1: %s\n", msg);
   printf("String 2: %s\n", compare);
   printf("Library: %d\n", strcmp(msg, compare));
   printf("Ft: %d\n", ft_strcmp(msg, compare));

   printf("------------------------------\n");

   write(1, "Library: Hello examiner!\n", 25);
   ft_write(1, "Ft: Hello examiner!\n", 20);

   printf("------------------------------\n");

   char buf[15], ft_buf[15];
   int fd = open("Sample.txt", O_RDONLY);
   printf("\e[1mTESTING FT_READ\e[m\n");
   printf("Library: %ld\n", read(fd, buf, 14));
   printf("Buffer: %s\n", buf);
   fd = open("Sample.txt", O_RDONLY);
   printf("Ft: %ld\n", ft_read(fd, ft_buf, 14));
   printf("Buffer: %s\n", ft_buf);

   printf("------------------------------\n");

   char *copy = "This string has been dupplicated";
   char *dest = strdup(copy);
   char *ft_dest = ft_strdup(copy);
   printf("\e[1mTESTING FT_STRDUP\e[m\n");
   printf("Library: %s\n", dest);
   printf("Ft: %s\n", ft_dest);
}