#!/bin/bash
directory="."
files=$(find "$directory" -type f -name "1*" | sort)
if [ -z "$files" ]; then
echo "Файлы,начинающиеся с 1 ,не найдены"
else
echo "список:"
echo "$files"
fi
