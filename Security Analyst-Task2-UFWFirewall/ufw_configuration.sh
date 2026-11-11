#!/bin/bash

echo "[+] Updating package lists and installing UFW..."
sudo apt update && sudo apt install ufw -y

echo "[+] Setting default UFW policies..."
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "[+] Applying custom firewall rules..."
sudo ufw allow ssh
sudo ufw deny 80/tcp
sudo ufw allow 443/tcp
sudo ufw deny from 192.168.29.200 to any

echo "[+] Enabling UFW..."
sudo ufw --force enable

echo "[+] Final Firewall Status & Active Rules:"
sudo ufw status verbose
