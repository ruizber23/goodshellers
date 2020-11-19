#!/bin/bash
cd ~/Data/shell
head -n 5 Finn.txt | wc -w
head -n 5 Finn.txt | wc -w > 002.out
tail -n 40 < ~/.history >> 002.sh
