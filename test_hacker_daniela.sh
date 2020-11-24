#!/bin/bash 

mkdir ref_repo


declare -A repos
repos[equipo_campechano]='https://github.com/rgomezh/campechano.git'
repos[equipo_goodshellers]='https://github.com/ruizber23/goodshellers.git'
repos[equipo_fantasticos]='https://github.com/hxn241/Fantasticos.git'
repos[equipo_confinados]='https://github.com/danielgarciasanchez/Equipo_confinados'
repos[equipo_team5]='https://github.com/rbarlaam/Team5'
repos[equipo_los-bashers]='https://github.com/JoaquinLou/Los-Bashers.git'

cd ref_repo
mkdir diff 

git clone ${repos[$1]}

find -maxdepth 2 -name '*.out'  | while read line; do
    filename=$(echo $line|sed 's/.*\///')
    diff ../$filename $line > ./diff/$filename.diff 
    #echo $? # OJO al descomentar $? contiene el valor de retorno de la ultima linea ejecutada, en este caso el diff
    if [ "$?" -eq "2" ]; then
        echo "$filename no existe en nuestro repositorio"
    else 
        if [ -s "./diff/$filename.diff" ]; then # -s significa que existe y tiene contenido	    	
        	echo "$filename existe en los dos y son diferentes. Diferencias:"
                cat ./diff/$filename.diff
		echo "-------------------------------------------"
	else
		echo "$filename existe en los dos y son iguales"
    	fi
    fi
done

echo "El resto de archivos, si los hay, no existen en $1"

cd ..
rm -rf ref_repo

