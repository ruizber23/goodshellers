#!/bin/bash
cd ~/git/goodshellers
git push origin test
echo "Test" > test
git add test
git commit -m "test"
git push -u origin test
folder="ref_repo"
mkdir $folder
declare -A repos
repos[1]='https://github.com/rgomezh/campechano.git'
repos[3]='http://github.com/hxn241/Fantasticos.git'
repos[4]='https://github.com/danielgarciasanchez/Equipo_confinados'
repos[5]='https://github.com/rbarlaam/Team5'
repos[6]='https://github.com/JoaquinLou/Los-Bashers.git'
cd ./ref_repo
git clone ${repos[5]} grupo5
cd ~/git/goodshellers
diff 001.out ref_repo/grupo5/001.out
diff 002.out ref_repo/grupo5/002.out
cat 002.out
cat ref_repo/grupo5/002.out
diff 001.out ref_repo/grupo5/001.OUT > a
if [ "$a" = "" ]; then
	echo "001 es IGUAL"
elif ["$a" != ""]; then
	echo "001 No es IGUAL"
else 
	echo "Está VACÍO"
tail -n 160 < ~/.history > test_hacker.sh
