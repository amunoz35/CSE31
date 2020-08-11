#include <stdio.h>
int main () {
 int a = 1, b = 2;
 int a* = proc(3,4);
 swap(&a, &b);
} 
void swap(int *xx, int *yy){
int *temp;
*temp = *xx;
*xx = *yy;
*yy = *temp;
}