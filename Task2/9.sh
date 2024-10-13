#!/bin/bash
if [ "$#" -ne 2 ]; then
echo "Использование базы и 8р"
fi
file1="baza.txt"
file2="8p.txt"
if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
echo "Один из файлов не существует"
exit 1 
fi
sorted_files="sort2.txt"
sorted_files2="sort3.txt"
unique="unique_words.txt"
tr ' ' '\n' < "$file1" | sort | uniq > "$sorted_files"
tr ' ' '\n' < "$file2" | sort | uniq > "$sorted_files2"

comm -23 "$sorted_files" "$sorted_files2" > "$unique"
comm -13 "$sorted_files" "$sorted_files2" > "$unique"
sort -u "$unique" -o "$unique"
echo "Уникальные слова из двух файлов сохранены"
rm "$sorted_files" "$sorted_files2"
