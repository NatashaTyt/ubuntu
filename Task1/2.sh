#!/bin/bash
output_file="list.txt"
> "$output_file"
find . -type f -name "script*" > "&output_file"
echo "Spisok files zapison"
