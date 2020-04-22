#!/bin/bash

let "total=0"
let "fail=0"

for file in "$@"
do
    if ! zcat $file > /dev/null; then
        let "fail++"
    fi
    let "total++"
done

echo "Total is ${total}"
echo "Fail is ${fail}"
