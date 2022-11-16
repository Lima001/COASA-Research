#bin/bash
>&2 echo "bubble padrão"
for counter in $(seq 1 10); do
    time gcc Sort/bubbleSort.c -o bubble.out;
done;

>&2 echo "bubble -O1"
for counter in $(seq 1 10); do
    time gcc Sort/bubbleSort.c -O1 -o bubble.out
done;

>&2 echo "bubble -O2"
for counter in $(seq 1 10); do
    time gcc Sort/bubbleSort.c -O2 -o bubble.out
done;

>&2 echo "bubble -O3"
for counter in $(seq 1 10); do
    time gcc Sort/bubbleSort.c -O3 -o bubble.out
done;

>&2 echo "bubble -Ofast"
for counter in $(seq 1 10); do
    time gcc Sort/bubbleSort.c -Ofast -o bubble.out
done;

rm bubble.out