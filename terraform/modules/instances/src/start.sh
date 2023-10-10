#!/bin/bash


## Install Docker 
sudo apt-get update
sudo apt-get install -y docker.io
sudo apt-get install -y docker-compose


cd /home/ubuntu
mkdir app


## Create docker-file
echo "version: '3.3'

services:
  python-api:
    image: carloscatalanl/python-pipeline:latest
    ports:
      - "80:4000"
    restart: always
" >> ./app/docker-compose.yml


## Create docker boot service
echo "[Unit]
Description=docker boot
After=docker.service

[Service]
Type=oneshot
RemainAfterExit=yes
WorkingDirectory=/home/ubuntu/app
ExecStartPre=sudo docker-compose -f /home/ubuntu/app/docker-compose.yml pull
ExecStart=sudo docker-compose -f /home/ubuntu/app/docker-compose.yml up -d

[Install]
WantedBy=multi-user.target
" >> /etc/systemd/system/docker_boot.service


## Enable and start docker boot service
sudo systemctl enable docker_boot.service
sudo systemctl start docker_boot.service


sudo docker-compose -f /home/ubuntu/app/docker-compose.yml up -d