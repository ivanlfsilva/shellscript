#!/bin/sh

echo "-------------------"
echo "Olá digite seu nome"
echo "-------------------"

echo
read nome
echo

echo "-------------------------------------------"
echo "olá $nome vamos instalar alguns programas? "
echo "-------------------------------------------"

echo

echo "----------------------------------------------------------"
echo "essas são as opções de programas que podem ser instalados!"
echo "----------------------------------------------------------"
while read -p "digite a opção desejada
    ----------------------------------------------------------
    essas são as opções de programas que podem ser instalados!
    ----------------------------------------------------------
    1- open-jdk-8
    2- nodejs
    3- build-essential
    4- vim
    5- suite aircrack-ng
    6- atualizar os pacotes
    7- postgresql
    0- para SAIR
    ----------------------------- 
    " opcao


do
    if [ $opcao -eq 1 ]; then

            sudo add-apt-repository ppa:openjdk-r/ppa && 
            sudo apt-get update && 
            sudo apt-get install openjdk-8-jdk
            

        elif [ $opcao -eq 2 ]; then

            sudo apt install curl &&
            curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash - &&\
            sudo apt-get install -y nodejs
            

        elif [ $opcao -eq 3 ]; then

            apt-get install build-essential
            

        elif [ $opcao -eq 4 ]; then

            sudo apt install vim


        elif [ $opcao -eq 5 ]; then

            sudo apt install aircrack-ng      
            
        elif [ $opcao -eq 6 ]; then

            sudo apt-get update &&
            sudo apt-get upgrade

        elif [ $opcao -eq 7 ]; then

            sudo apt-get update
            sudo apt-get install postgresql postgresql-contrib
        else 
            echo "Até mais!"
            break
    fi
done
