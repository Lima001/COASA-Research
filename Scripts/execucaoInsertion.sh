#bin/bash

touch auxiliar.txt
gcc Sort/insertionSort.c -o insertion.out

>&2 echo "insertion Padrão"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./insertion.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/insertionSort.c -O1 -o insertion.out
>&2 echo "insertion -O1"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./insertion.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/insertionSort.c -O2 -o insertion.out
>&2 echo "insertion -O2"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./insertion.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/insertionSort.c -O3 -o insertion.out
>&2 echo "insertion -O3"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./insertion.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/insertionSort.c -Ofast -o insertion.out
>&2 echo "insertion -Ofast"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./insertion.out $i "Arrays/n_$i/array_$counter";
        done;
done;

rm auxiliar.txt
rm insertion.out