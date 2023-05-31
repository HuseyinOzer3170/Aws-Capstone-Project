#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN=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
git clone https://$TOKEN@github.com/HuseyinOzer3170/Aws-Capstone-Project.git
cd /home/ubuntu/Aws-Capstone-Project
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/Aws-Capstone-Project/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80