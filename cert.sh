#/bin/bash
sudo apt update
sudo apt install python3 python3-venv libaugeas0
sudo python3 -m venv /opt/certbot/
sudo /opt/certbot/bin/pip install --upgrade pip
sudo /opt/certbot/bin/pip install certbot
sudo ln -s /opt/certbot/bin/certbot /usr/bin/certbot

read -p "Enter domain: " domain

sudo certbot certonly --standalone

sudo cp /etc/letsencrypt/live/${domain}/{cert.pem,chain.pem,fullchain.pem,privkey.pem} cert
sudo chown -R ${USER}:users cert