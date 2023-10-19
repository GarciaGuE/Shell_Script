#!/bin/bash

# Hash to find
hash="35d0398f7773bae28a5a05aacb45d00371f36638f54e0f4db4a81fa9e2414f29  -"

# Character pattern for alphanumeric combinations
p="{{0..9},{A..F}}"

# Loop to generate combinations of increasing length
for i in $(seq 1 5); do
    s=""
    for j in $(seq 1 $i); do
        s="$s$p"
    done
    combinations=$(eval echo -n $s)
    echo "Testing $(echo $combinations | wc -w) combinations of length $i"
    
	# Loop to calculate the SHA-256 hash for each combination
    for c in $combinations; do
        h=$(echo $c | sha256sum)
        OLDIFS=$IFS
        IFS=$'\n'

        # Compare the calculated hash with the given hash
        if [ "$h" == "$hash" ]; then
            echo "Password found:" $c
            exit
        fi
        
        IFS=$OLDIFS
    done
done
