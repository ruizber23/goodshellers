#!/bin/bash
#
# Creating temp folder
folder="ref_repo"
diff_folder="diff"
mkdir $folder
mkdir $diff_folder

# Cloning repo into folder
git clone https://github.com/rgomezh/campechano.git $folder

origin=$(find . -maxdepth 1 -name '*.out'|sort|tr '\n' ' ') 
ref=$(find $folder -maxdepth 1 -name '*.out' | sort|tr '\n' ' ')
echo $origin

##This command 
#cut -d ' ' -f $i
# will slice the list of strings for position i

i=1
for file in $ref; do
    echo $i $file
    ori_i=$(echo $origin|cut -d ' ' -f $i)
    echo $ori_i
    diff $ori_i file > $diff_folder/$ori_i.diff
    i=$((i+1))
done

#Deleting folder
rm -rf $folder
##rm -rf $diff_folder
echo "repo cloned, removing folder $folder"
