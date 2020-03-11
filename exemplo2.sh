#!/bin/bash
#cd é executado dentro de um subshell, para mudar o diretorio atual da execução . ./ex2.sh
INCLUDE="#include<stdio.h>"
PROGRAM="

int main(){
	FILE *file;
	char line[170];
	char *result;
	int i;

	file = fopen("\"exemplo1.sh"\", "\"rt"\");

	if(file == NULL){
		printf("\""Problema na abertura do arquivo""\");
		return 0;
	}

	while(!feof(file)){
		result = fgets(line, 170, file);
		if(result)
			printf("\"%s"\", line);
	}

	fclose(file);	
	
	return 0;
}"
echo ${INCLUDE} >> novo.c
echo ${PROGRAM} >> novo.c

gcc -o prog *.c
if [ $? -eq 0 ];
then
	echo "complidado com sucesso"
	./prog
else
	echo "nao compilado"
fi
