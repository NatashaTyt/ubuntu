#!/bin/bash

interpreters=("bash" "sh" "zsh" "dash" "fish")

echo "Местонахождение интерпретаторов в системе:"

for interpreter in "${interpreters[@]}"; do
location=$(which $interpreter 2>/dev/null)
if [ -n "$location" ]; then
echo "$interpreter: $location"
else
echo "$interpreter: не найден"
fi
done
echo ""
echo "Текущий интерпретатор"
current_shell=$(echo $SHELL)
echo "$current_shell"


