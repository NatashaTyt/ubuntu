#!/bin/bash

file="baza.txt"

if [ ! -f "$file" ]; then
echo "файл не существует"
exit 1 
fi
youngest_person=$(awk -F: '{print $2, $1}' "$file" | sort -n | head -n 1 | awk '{print $2}')
echo "самый молодой: $youngest_person"
