#!/bin/bash

input="input.txt"
output="output.txt"

if [[ ! -f "$input" ]]; then
echo " File ne suchestvyet"
exit 1
fi

sed 's/[^a-zA-Z]//g' "$input" > "$output"

echo "Save in $output"
