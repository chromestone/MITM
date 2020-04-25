#!/bin/bash

for file in "$@"
do
    filename=$(basename -- "$file")
    filename="./sessions/${filename%.*}.txt"
    zcat $file > $filename
done
