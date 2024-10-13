#!/bin/bash

directory="./"
script_file=$(find "$directory" -maxdepth 1 -name "*.sh")

if [[ -n "$script_file" ]]; then
echo "Файлы найдены $script_file"
bash "$script_file"
else
echo "Файлы не найдены"
fi
