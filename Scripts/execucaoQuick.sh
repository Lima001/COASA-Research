#bin/bash

touch auxiliar.txt
gcc Sort/quickSort.c -o quick.out

>&2 echo "quick Padrão"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./quick.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/quickSort.c -O1 -o quick.out
>&2 echo "quick -O1"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./quick.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/quickSort.c -O2 -o quick.out
>&2 echo "quick -O2"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./quick.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/quickSort.c -O3 -o quick.out
>&2 echo "quick -O3"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./quick.out $i "Arrays/n_$i/array_$counter";
        done;
done;

gcc Sort/quickSort.c -Ofast -o quick.out
>&2 echo "quick -Ofast"

for i in $(cat valores.txt);
    do
        >&2 echo $i
        echo $i > auxiliar.txt

        for counter in $(seq 1 10); do
		    time ./quick.out $i "Arrays/n_$i/array_$counter";
        done;
done;

rm auxiliar.txt
rm quick.out