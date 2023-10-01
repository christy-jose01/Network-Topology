#!/bin/bash

for file in *
do
    if [[ -f $file ]]; then
        count=0
        while read -r line || [[ -n $line ]] # we add an extra condition so that we don't ignore the last line
        do
          ((count++))
            if (( count % 2 == 0 )); then
                echo "$file: $line"
            fi            
        done < "$file"
    fi
done
