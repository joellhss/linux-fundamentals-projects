#!/bin/bash

echo "Atualizando servidor..."

sudo apt update && sudo apt upgrade -y

echo "Instalando servidor Apache"

sudo apt install apache2 -y

echo "Instalando unzip"

sudo apt install unzip -y

echo "Baixando repositório"

cd /tmp
sudo wget https://github.com/joellhss/portfolio/archive/refs/heads/main.zip

echo "Copiando arquivos do repositório para o servidor apache"

sudo unzip main.zip
cd ./portfolio-main
sudo cp -R * /var/www/html/

echo "Finalizado."



