#!/bin/bash

folder="ref_repo"
mkdir -p $folder/$1

declare -A repos
repos[equipo_campechano]='https://github.com/rgomezh/campechano.git'
repos[equipo_goodshellers]='https://github.com/ruizber23/goodshellers.git'
repos[equipo_fantasticos]='https://github.com/hxn241/Fantasticos.git'
repos[equipo_confinados]='https://github.com/danielgarciasanchez/Equipo_confinados'
repos[equipo_team5]='https://github.com/rbarlaam/Team5'
repos[equipo_los-bashers]='https://github.com/JoaquinLou/Los-Bashers.git'

git clone -q ${repos[$1]} $folder/$1


goodshellers=$(find -maxdepth 1 -name '*.out'|sort|tr '\n' ' ') 
grupo=$(find $folder/$1 -maxdepth 1 -name '*.out'|sort|tr '\n' ' ')
#echo $goodshellers
#echo $grupo

diff_folder="diferencias"
mkdir -p $diff_folder/$1

i=1
for file in $grupo; do
    echo Ejercio $i Archivo $file
    archivoi=$(echo $goodshellers|cut -d ' ' -f $i)
    diff $archivoi $file > $diff_folder/$1/$archivoi.diff
    echo "La diferencia de $i es:"
    cat ./$diff_folder/$1/$archivoi.diff

    if [ -s "$folder/$1/$archivoi" ]; 
    then
        if [ -s "./$diff_folder/$1/$archivoi.diff" ]; then	    	
                echo "$archivoi es distinto."
		echo "Diferencias:"
                    cat ./$diff_folder/$1/$archivoi.diff
        else
            echo "$archivoi es diferente"
        fi
    else
	echo "Ejer $i no realizado para $1"
    fi

    i=$((i+1))
done

#Borro directorio
rm -rf $folder
