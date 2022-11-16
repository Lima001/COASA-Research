#bin/bash

touch auxiliar.txt
gcc Sort/mergeSort.c -o merge.out

>&2 echo "merge Padrão"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./merge.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/mergeSort.c -O1 -o merge.out
>&2 echo "merge -O1"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./merge.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/mergeSort.c -O2 -o merge.out
>&2 echo "merge -O2"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./merge.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/mergeSort.c -O3 -o merge.out
>&2 echo "merge -O3"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./merge.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/mergeSort.c -Ofast -o merge.out
>&2 echo "merge -Ofast"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./merge.out $i "Arrays/n_$i/array_$counter";
        done;
done;

rm auxiliar.txt
rm merge.out