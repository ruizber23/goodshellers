#!/bin/bash
echo '#!bin/bash' > 006.out
echo "read number" >> 006.out
echo "number2=5" >> 006.out
echo "sum=`echo "$number + $number2" | bc`" >> 006.out
echo "echo "Cuando cumplas $sum tendras canas."" >> 006.out
tail -n 40 < ~/.history >> 006.sh
