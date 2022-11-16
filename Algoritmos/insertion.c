void insertion_sort(int* array, int tamanho){
    int i, j, valor;

    for (i=1; i<tamanho; i++){
        valor = *(array+i);
        j = i-1;

        while (j >= 0 && *(array+j) > valor){
            *(array+j+1) += *(array+j);
            *(array+j) = *(array+j+1) - *(array+j);
            *(array+j+1) -= *(array+j);
            j--;
        }

        *(array+j+1) = valor;
    }
}