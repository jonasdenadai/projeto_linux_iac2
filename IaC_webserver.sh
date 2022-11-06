#!/bin/bash

echo "Atualizando servidor linux..."

apt-get update -y
apt-get upgrade -y

echo "Instalando servidor web - APACHE2..."

apt-get install apache2 -y

echo "Instalando o descompactador de arquivos - UNZIP"

apt-get install unzip -y

echo "Baixando e descompactando a aplicação..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

echo "Apagando página padrão do APACHE e copiando aplicação..."

rm /var/www/html/index.html

cd linux-site-dio-main

cp -R * /var/www/html/
