#include <inttypes.h>
#include <stdio.h>

size_t    ft_strlen(const char *s);

int main()
{
   size_t len = ft_strlen("");
   printf("Result: %ld\n", len);
}