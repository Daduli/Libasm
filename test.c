#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

size_t    ft_strlen(const char *s);
char *ft_strcpy(char *dst, const char *src);
int ft_strcmp(const char *s1, const char *s2);

int main()
{
   char * str1 = "&";
   char * str2 = "é";
   int ret = ft_strcmp(str1, str2);
   printf("ft value: %i\n", ret);
   printf("ft char: %c\n", ret);
   ret = strcmp(str1, str2);
   printf("lib: %d\n", ret);
   printf("lib char: %c\n", ret);
}