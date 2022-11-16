#bin/bash

touch auxiliar.txt
gcc Sort/bubbleSort.c -o bubble.out

>&2 echo "bubble Padrão"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./bubble.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/bubbleSort.c -O1 -o bubble.out
>&2 echo "bubble -O1"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./bubble.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/bubbleSort.c -O2 -o bubble.out
>&2 echo "bubble -O2"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./bubble.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/bubbleSort.c -O3 -o bubble.out
>&2 echo "bubble -O3"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./bubble.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/bubbleSort.c -Ofast -o bubble.out
>&2 echo "bubble -Ofast"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./bubble.out $i "Arrays/n_$i/array_$counter";
        done;
done;

rm auxiliar.txt
rm bubble.out