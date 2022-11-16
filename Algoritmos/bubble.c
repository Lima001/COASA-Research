void bubble_sort(int* array, int tamanho){
    int i,j;

    for (i=0; i<tamanho-1; i++){

        for (j=0; j<tamanho-1-i; j++){
            if (*(array+j) > *(array+j+1)){

                *(array+j) += *(array+j+1);
                *(array+j+1) = *(array+j) - *(array+j+1);
                *(array+j) -= *(array+j+1);
            }
        }
    }
    return;
}