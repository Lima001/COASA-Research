int partition(int* array, int inicio, int fim){
    int pivo = *(array+inicio);
    
    *(array+inicio) = *(array+fim);
    *(array+fim) = pivo;
    
    int i=inicio, j=inicio;
    int temp;
    
    for (j; j<fim; j++){
        
        if (*(array+j) < pivo){
            
            temp = *(array+j);
            *(array+j) = *(array+i);
            *(array+i) = temp;

            i++;
        }
    }

    *(array+fim) = *(array+i);
    *(array+i) = pivo;

    return i;
}

void divide(int* array, int inicio, int fim){
    if (inicio < fim){

        int pos_pivo = partition(array, inicio, fim);

        divide(array, inicio, pos_pivo-1);
        divide(array, pos_pivo+1, fim);

    }
}

void quick_sort(int* array, int tamanho){
    divide(array, 0, tamanho-1);
}