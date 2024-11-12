#!/bin/bash

echo "Atualizando o servidor..."
apt-get update -y && apt-get upgrade -y


echo "Instalando o apache e o unzip..."
apt-get install apache2 unzip -y


echo "Baixando arquivos da aplicação..."
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip


echo "Descompactando e copiando arquivos para destino..."
unzip /tmp/main.zip -d /tmp
cp -R /tmp/linux-site-dio-main/* /var/www/html/


