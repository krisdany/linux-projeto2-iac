#!/bin/bash

echo "Atualizando... "
apt-get update
apt-get upgrade -y
echo "Servidor atualizado"
echo "> >> >>> >>>> >>>>> >>>>>>>"

echo "Instalando Servidor Apache2... "
apt-get install apache2 -y
echo "Servidor instalado"
echo "> >> >>> >>>> >>>>> >>>>>>>"

echo "Instalando Unzip... "
apt-get install unzip -y
echo "Unzip instalado"
echo "> >> >>> >>>> >>>>> >>>>>>>"

echo "Atualização do Template do site... "
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Desconpactando arquivos... "
unzip main.zip

echo "Copiando e colando arquivos no destino... "
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Processo finalizado..."

