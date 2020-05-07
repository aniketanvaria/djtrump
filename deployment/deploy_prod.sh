#!/bin/sh

ssh root@3.6.55.22 <<EOF
  cd djtrump
  git pull
  virtualenv venv
  source venv/bin/activate
  pip install -r requirements.txt
  ./manage.py makemigrations
  ./manage.py migrate
  exit
EOF
