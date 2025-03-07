#!/bin/bash

# Création et configuration de l'exécution
chmod a+x uninstall.sh
chmod a+x ../MagistralVPN
cp ../MagistralVPN /bin/MagistralVPN

# Création du fichier de configuration
sudo mkdir /etc/MagistralVPN
sudo mkdir /etc/MagistralVPN/logs
sudo chmod a+w -R /etc/MagistralVPN/logs/
echo "DEFAULT_PROFILE=???" > /etc/MagistralVPN/vpn.conf

# Installation de packages annexes
sudo apt install wireguard &> /dev/null