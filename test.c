#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

size_t    ft_strlen(const char *s);
char *ft_strcpy(char *dst, const char *src);
int strcmp(const char *s1, const char *s2);

int main()
{
   // size_t len = ft_strlen("This a sample text\n");
   // printf("Result: %ld\n", len);
   char *src1 = "Hello";
   char *dst1 = malloc(strlen(src1) + 1);
   // printf("Result: %d", ft_strcpy(dst, src));
   printf("BEFORE   src: %s %p| dst: %s %p\n", src1, &src1, dst1, &dst1);
   char *ret1 = strcpy(dst1, src1);
   // char *ret2 = ft_strcpy(dst1, src1);
   printf("LIB   src: %s %p| dst: %s %p | ret: %s %p\n", src1, &src1, dst1, &dst1, ret1, &ret1);
   // printf("FT   src: %s %p| dst: %s %p | ret: %s %p\n", src1, &src1, dst1, &dst1, ret2, &ret2);
   free(dst1);
}
