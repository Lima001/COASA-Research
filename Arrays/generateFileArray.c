#include <stdio.h>
#include <stdlib.h>

int* generateRandomArray(int tamanho){
    int * array = malloc(tamanho * sizeof(int));
    
    for (int i=0; i<tamanho; i++)
        array[i] = rand();

    return array;
}

int main(int argc, char **argv){
    if (argc != 3){
        printf("Quantidade de parâmetros inválidos...\n");
        return 1;
    }
    int n = atoi(argv[1]);
    char * nome_arquivo = argv[2];
    
    int * array = generateRandomArray(n);

    FILE *f = fopen(nome_arquivo, "w");
    
    for (int i=0; i<n; i++)
        fprintf(f,"%d\n",array[i]);

    fclose(f);

    return 0;
}