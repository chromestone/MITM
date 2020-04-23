#!/bin/bash

let "total=0"
let "notempty=0"

for file in "$@"
do
    line_num="$(wc -l < ${file})"
    if [ "$line_num" != "7" ]; then
        echo $file
        let "notempty++"
    fi
    let "total++"
done

echo "Not empty is ${notempty}"
echo "Total is ${total}"
