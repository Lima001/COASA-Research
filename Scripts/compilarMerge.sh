#bin/bash
>&2 echo "merge padrão"
for counter in $(seq 1 10); do
    time gcc Sort/mergeSort.c -o merge.out;
done;

>&2 echo "merge -O1"
for counter in $(seq 1 10); do
    time gcc Sort/mergeSort.c -O1 -o merge.out
done;

>&2 echo "merge -O2"
for counter in $(seq 1 10); do
    time gcc Sort/mergeSort.c -O2 -o merge.out
done;

>&2 echo "merge -O3"
for counter in $(seq 1 10); do
    time gcc Sort/mergeSort.c -O3 -o merge.out
done;

>&2 echo "merge -Ofast"
for counter in $(seq 1 10); do
    time gcc Sort/mergeSort.c -Ofast -o merge.out
done;

rm merge.out