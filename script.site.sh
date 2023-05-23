#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unizip -y

echo "Baixando e copiando os arquivos da aplicacção..."

cd /tmp
wget https://github.com/talissonneto/site/archive/refs/heads/main.zip
unzip main.zip
cd site
cp -R * /var/www/html
