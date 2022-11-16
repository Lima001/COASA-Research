gcc generateFileArray.c

for i in $(cat valores.txt); do
    mkdir "n_$i" && cd "n_$i"

    for j in $(seq 1 $1); do
        ../a.out $i "array_$j"
    done;

    cd ../

done;