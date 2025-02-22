#!/bin/bash

if [ -d "bind" ]; then
    echo "Entrando no diretório bind"
    cd "bind" || exit
    docker compose up -d --build --force-recreate
    cd .. || exit
	else
	    echo "Diretório bind não encontrado"
fi

if [ -d "mailcow-dockerized" ]; then
    echo "Entrando no diretório mailcow-dockerized"
    cd "mailcow-dockerized" || exit
    docker compose up -d
    cd .. || exit
    else
        echo "Diretório mailcow-dockerized não encontrado"
fi

if [ -d "gitlab" ]; then
    echo "Entrando no diretório gitlab"
    cd "gitlab" || exit
    docker compose up -d --build --force-recreate
    cd .. || exit
    else
        echo "Diretório gitlab não encontrado"
fi
