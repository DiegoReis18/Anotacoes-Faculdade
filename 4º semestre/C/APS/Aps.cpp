#include <stdio.h>
#include <stdlib.h>
#include <windows.h>


int TAM = 300000;

void preenche(int *vetor, int a)
{ 
int i;
	if (a == 1){
		  for(i = 0; i < TAM; i++ ) 
 		  {  
     		vetor[i]=rand()%33000;
 	      }
	}
	else 
		if (a == 2){
			for(i = 1; i < TAM+1; i++ ) 
	 	 	{  
	     	vetor[i-1]=i;
	 	  }
		}
	else 
		if (a == 3){
	  		for(i = 0; i < TAM+1; i++ ) 
	 	 	{
			 	vetor[TAM-i]=i;
	 	 	}
	 	 }
    else 
		if (a == 4){
      int aux=1;
	  		for(i = 0; i < TAM; i++ ) 
	 	 	{
        if(i<5000){
			 	vetor[i]=i+1;
         }
        else{
        vetor[TAM-aux]=i+1;
        aux++;
         	} 
	 	} 
	}
}

void mostra(int *vetor)
{
int i;
  for( i = 0; i < TAM; i++ )
  {   printf("%d\t",vetor[i]); 
  }  
}

void selecao (int *vetor)
{
int i,j,min,aux;
int n=TAM;
for( i = 0; i < n-1; i++ )
             {
    	min = i;
             for( j = i + 1; j < n; j++ ) 
    	     {
      	     if ( vetor[j] < vetor[min] )
      	        {
         	          min = j;
                          }
    	     }
              aux=vetor[i];
              vetor[i]=vetor[min];                           
              vetor[min]=aux;                               
              }  	   
}

insercao (int *vetor)
{
int i,j,chave;
int n=TAM;
for(i = 1; i < n; i++)
	{
	chave=vetor[i];
	j = i-1;
	while ((j>=0)&&(vetor[j]>chave))
                      {	
                             vetor[j+1]=vetor[j];
		j =j-1;
	        }
	vetor[j+1]=chave;                 
	} 
}

void gnomo(int *vetor) {
int index=0;
int n=TAM;
	while (index < n) {
            if (index == 0)
                index++;
            if (vetor[index] >= vetor[index - 1])
                index++;
            else {
                int temp = 0;
                temp = vetor[index];
                vetor[index] = vetor[index - 1];
                vetor[index - 1] = temp;
                index--;
            }
        }
                                                   
}
                                                     

main()
{
int vetor[TAM];
float inicio, fim, tempo, gmd = 0, smd = 0, imd = 0;
int loop = 1, opt, optv = 1, gcount = 0, scount = 0, icount = 0, verify = 0, v = 1, m = 1;
char *c = "Ativado";
while (loop == 1)
{ 
	verify = 0;
	system("cls");
	printf("\n\nAlgoritimos de Ordenacao\n\n-----------Menu-----------\n");
	printf("1 - Executar Ordenacao por GnomeSort\n");
	printf("2 - Executar Ordenacao por SelectionSort\n");
	printf("3 - Executar Ordenacao por Insertion Sort\n");
	printf("4 - Mostrar Medias\n");
	printf("5 - Opcoes\n6 - Sair\n");
	printf("\nDigite um numero: ");
	scanf("%d",&opt);
	
	if (v == 1){
		TAM = 10000;
	} 
	
	 if (opt == 1 || opt == 2 || opt == 3){
	  preenche(vetor, optv);
	  if (m == 1){
	  	printf("\n--------------------------\n");	
	  	mostra(vetor);
	  }

	}
	printf("\n--------------------------\n");
	
	if (opt == 1){
		inicio = GetTickCount();	
		gnomo(vetor);
		fim=GetTickCount();
		gcount++;
		verify = 1;
		tempo = (fim - inicio)/1000;
		if (gcount>1){
			gmd = (gmd+tempo)/2;
		}
		else{
			gmd = gmd+tempo;
			}
	}
	
	else
		if (opt == 2){
			inicio = GetTickCount();	
			selecao(vetor);
			fim=GetTickCount();
			scount++;
			verify = 1;
			tempo = (fim - inicio)/1000;
			if (scount>1){
				smd = (smd+tempo)/2;
			}
			else{
				smd = smd+tempo;
			}
		}
		
	else
		if (opt == 3){
			inicio = GetTickCount();	
			insercao(vetor);
			fim=GetTickCount();
			icount++;
			verify = 1;
			tempo = (fim - inicio)/1000;
			if (icount>1){
				imd = (imd+tempo)/2;
			}
			else{
				imd = imd+tempo;
			}
		}
		
	else
		if(opt == 4){
		printf("\nTempo Medio de Ordenacao do Metodo GnomeSort: %.3f segundos",gmd);
		printf("\nTempo Medio de Ordenacao do Metodo SelectionSort: %.3f segundos",smd);
		printf("\nTempo Medio de Ordenacao do Metodo InsertionSort: %.3f segundos\n",imd);
		printf("\n--------------------------\n\n");
		system("pause");
		}
		
	else
		if(opt == 5){
			while (verify != 2){
			system("cls");
			printf("\n\nAlgoritimos de Ordenacao\n\n-----Opcoes-do-vetor------\n");
			printf("Opcoes do vetor\n");
			printf("1 - Vetor Aleatorio\n");
			printf("2 - Vetor Crescente\n");
			printf("3 - Vetor Descrecente\n");
			printf("4 - Vetor Semi-ordenado\n");
			printf("5 - Alterar Tamanho (Atual: %d)\n", TAM);
			printf("6 - Mostrar Vetor (%s)\n", c);
			printf("\nDigite um numero: ");
			scanf("%d",&optv);
			if (optv == 1 || optv == 2 || optv == 3 || optv == 4)
			{
				verify = 2;
			}
			if (optv == 5){
			system("cls");
			printf("\n\nAlgoritimos de Ordenacao\n\n-----Opcoes-do-vetor------\n");
			printf("\nDigite o Tamanho do Vetor (Maximo: 300000): ");
			scanf("%d",&TAM);
			if (TAM > 300000 || TAM < 0){
				TAM = 10000;
			}
				v = 0;
			}
			
			if (optv == 6){
				if (m == 1){
					m = 0;
					c = "Desativado";
				}
	
				else{
					m = 1;
					c = "Ativado";
				}
			}
		}
	}	
	else
		if(opt == 6){
		abort();
		}
		
	else{
		printf("\n\nCarecter Invalido!! \n\nTente Novamente...\n");
		printf("--------------------------\n");
		system("pause");
	}
	
	if (verify == 1){
		if (m == 1){
			system("pause");
			printf("--------------------------\n");
			mostra(vetor);
			printf("\n--------------------------\n");
		}
		printf("\nTempo de ordenacao : %.3f segundos\n",tempo);
		printf("\n--------------------------\n");
		printf("\n\n");
		system("pause");
		}
	}		
}
