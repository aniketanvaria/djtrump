#!/bin/sh

ssh root@3.6.55.22 <<EOF
  cd djtrump
  git pull origin master
  ./manage.py makemigrations
  ./manage.py migrate
  ./manage.py runserver
  exit
EOF
