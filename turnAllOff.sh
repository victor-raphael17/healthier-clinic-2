#!/bin/bash

DIRS=("gitlab" "mailcow-dockerized" "bind")

for DIR in "${DIRS[@]}"; do
	if [ -d "$DIR" ]; then
		echo "Entrando no diretório $DIR"
		cd "$DIR" || exit
		docker compose down
		cd .. || exit
	else
		echo "Diretório $DIR não encontrado"
	fi
done
