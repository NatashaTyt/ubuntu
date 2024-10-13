#!/bin/bash

read -p "Vvedite colichestvo terminalov: " count
if ! [[ "$count" =~ ^[0-9]+$ ]]; then
echo "Vvedite celoe chislo"
exit 1
fi

for ((i=1; i<=count; i++)); do
gnome-terminal -- bash -c "firefox; exec bash" &
done
echo "$count open"
