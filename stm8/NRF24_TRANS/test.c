// C code to implement the approach
#include <stdio.h>
 
// Function to reverse bits of num
char reverseBits(int num)
{
   char reverse_num = 0;
    int i;
    for (i = 0; i < 8; i++) {
        if ((num & (1 << i)))
            reverse_num |= 1 << (7 - i);
    }
    return reverse_num;
}
 
// Driver code
int main()
{
    unsigned int x = 97;
    printf("%c", reverseBits(x));
    getchar();
}