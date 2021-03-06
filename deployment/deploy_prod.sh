#!/bin/sh

ssh ubuntu@3.6.55.22 <<EOF
  cd djtrump
  git pull origin master
  virtualenv venv
  source venv/bin/activate
  ./manage.py makemigrations
  ./manage.py migrate
  ./manage.py runserver
  exit
EOF
