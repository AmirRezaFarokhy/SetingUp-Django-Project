#!/bin/sh

echo Installing RabbitMQ, celery, postgresql

read -p 'Please give me your project name: ' projectname

sudo apt-get update

echo Start With RabbitMQ
sudo apt-get install rabbitmq-server
sudo systemctl start rabbitmq-server
echo RabbitMQ Installed and runing


echo Start With celery
sudo apt-get install celery
echo celery Installed, You must Setup celery.py for your task name 

echo Start With celery
sudo apt install postgresql postgresql-contrib
echo celery Installed, You must Setup setting.py for your db name, passwod, ...

sudo apt-get update

pip3 install -r requirements.txt

cp settings.py $projectname
cp celery.py $projectname

echo All this was done on localhost, if you want to change, you need to customize it for your host.


