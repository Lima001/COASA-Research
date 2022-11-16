#bin/bash
>&2 echo "quick padrão"
for counter in $(seq 1 10); do
    time gcc Sort/quickSort.c -o quick.out;
done;

>&2 echo "quick -O1"
for counter in $(seq 1 10); do
    time gcc Sort/quickSort.c -O1 -o quick.out
done;

>&2 echo "quick -O2"
for counter in $(seq 1 10); do
    time gcc Sort/quickSort.c -O2 -o quick.out
done;

>&2 echo "quick -O3"
for counter in $(seq 1 10); do
    time gcc Sort/quickSort.c -O3 -o quick.out
done;

>&2 echo "quick -Ofast"
for counter in $(seq 1 10); do
    time gcc Sort/quickSort.c -Ofast -o quick.out
done;

rm quick.out