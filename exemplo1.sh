#!/bin/bash
#cd é executado dentro de um subshell, para mudar o diretorio atual da execução . ./ex2.sh
echo "Do you REALLY want to run the script?(y/n)"
read ANSWER

if [ ${ANSWER} = 'y' ]; 
then

	cd /home/${USER}/Documentos
	
	mkdir Operacional\ Systems
	cd Operacional\ Systems
	MEMBERS=("ALLYSON ALVIM RIBEIRO" "DANIEL MACHADO DE OLIVEIRA" "HEMERSON BARCELOS DE MENEZES" "JOÃO PEDRO SILVA SOUSA" "RENATO SILVA DIAS" "THIAGO BORGES LOPES")
	#echo ${MEMBERS[@]} > ClassOS202001.txt

	for i in {0..5}
	do
		echo ${MEMBERS[i]} >> ClassOS202001.txt
	done

	gedit ClassOS202001.txt
else
	echo "See you later."
	sleep 1
fi
