#!/bin/bash

echo "=== Mise à jour du système ==="
 sudo apt update

echo "=== Installation Python, pip, venv ==="
sudo apt install python3 python3-pip python3-venv -y

echo "=== Installation Wireshark + Tshark ==="
sudo apt install wireshark tshark -y
sudo usermod -aG wireshark $USER

echo "=== Installation SNMP Tools ==="
sudo apt install snmp snmp-mibs-downloader snmpd -y

echo "=== Installation Nagios NRPE (optionnel) ==="
sudo apt install nagios-nrpe-server nagios-plugins -y

echo "=== Installation PostgreSQL (optionnel) ==="
sudo apt install postgresql postgresql-contrib -y

echo "=== Création de l'environnement virtuel ==="
python3 -m venv venv
source venv/bin/activate

echo "=== Installation des dépendances Python ==="
pip install -r requirements.txt

echo "=== Installation terminée ==="
