#include <stdio.h>
#include <stdlib.h>
#include <math.h>

void hanoi(int num, char org, char dest, char aux){
	if(num==1){
	
	printf("Mova o disco %d de %c para %c\n",num,org,dest);
	}else{
		hanoi(num-1,org,aux,dest);
		printf("Mova o disco %d de %c para %c\n",num,org,dest);
		hanoi(num-1,aux,dest,org);
	}
	}
	
int main(){
	int discos;
	printf("Digite o número de discos: \n");
	scanf("%d",&discos);
	hanoi(discos,'A','B','C');
	system("pause");
}