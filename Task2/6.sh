#!/bin/bash
input_file="baza.txt"
if [ ! -f "$input_file" ]; then
echo "file ne niden"
exit 1
fi
temp_file="t11.txt"
sed 's/Nutrina/Mercul/g; s/Atomova/Budchan/g' "$input_file" > "$temp_file"
mv "$temp_file" "$input_file"
echo "Familii zameneni"
