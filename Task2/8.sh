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
common_words=$(comm -12 <(tr ' ' '\n' < "$file1" | sort | uniq) <(tr ' ' '\n' < "$file2" | sort | uniq))
word_count=$(echo "$common_words" | wc -w)
echo "Количество одинаковых слов в обоих файлах: $word_count"
