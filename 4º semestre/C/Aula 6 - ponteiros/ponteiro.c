#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(){
	int a=10;
	int *p;
	p = &a;
	printf("endereço: %d",*p);
	printf("\nendereço: %d",p);
}