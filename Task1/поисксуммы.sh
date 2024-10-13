#!/bin/bash

sum=o

for i in {1..10}; do
sum=$((sum + i))
done
echo "Сумма чисел от 1 до 10:$sum"

