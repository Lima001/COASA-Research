#bin/bash
>&2 echo "insertion padrão"
for counter in $(seq 1 10); do
    time gcc Sort/insertionSort.c -o insertion.out;
done;

>&2 echo "insertion -O1"
for counter in $(seq 1 10); do
    time gcc Sort/insertionSort.c -O1 -o insertion.out
done;

>&2 echo "insertion -O2"
for counter in $(seq 1 10); do
    time gcc Sort/insertionSort.c -O2 -o insertion.out
done;

>&2 echo "insertion -O3"
for counter in $(seq 1 10); do
    time gcc Sort/insertionSort.c -O3 -o insertion.out
done;

>&2 echo "insertion -Ofast"
for counter in $(seq 1 10); do
    time gcc Sort/insertionSort.c -Ofast -o insertion.out
done;

rm insertion.out