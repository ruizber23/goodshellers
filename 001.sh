#!bin/bash

cd ~
cd Data/opentraveldata
ls -sSlr | tail -n 1 > largest_file.txt
cat largest_file.txt
cat largest_file.txt > 001.out
echo '#!bin/bash' > 001.sh
chmod u+wrx ~/.history
tail -n 40 < ~/.history >> 001.sh
