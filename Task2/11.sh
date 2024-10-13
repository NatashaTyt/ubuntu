#!/bin/bash

file="baza.txt"

if [ ! -f "$file" ]; then
echo "файл не существует"
exit 1 
fi
youngest_person=$(awk -F: '{print $2, $3}' "$file" | sort -n | head -n 1 | awk '{print $2}')
echo "зарплата самого молодого: $youngest_person"
