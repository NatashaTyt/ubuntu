#!/bin/bash
input="baza.txt"
temp="t11.txt"
if [ ! -f "$input" ]; then
echo "File input ne niden"
exit 1
fi
sort "$input" > "$temp"
mv "$temp" "$input"
echo "Данные файла инпут успешно отсортированы"
