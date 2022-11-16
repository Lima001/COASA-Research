#include <stdio.h>
#include <stdlib.h>

#include "../Algoritmos/bubble.c"

int main(int argc, char **argv){
    if (argc != 3){
        printf("Quantidade de parâmetros inválidos...\n");
        return 1;
    }
    
    int n = atoi(argv[1]);
    char * nome_arquivo = argv[2];
    int retorno;
    int * array = malloc(n * sizeof(int));

    FILE *f = fopen(nome_arquivo, "r");
    for (int i=0; i<n; i++)
        retorno = fscanf(f,"%d",&array[i]);

    bubble_sort(array,n);

    free(array);

    return 0;
}
