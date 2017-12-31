# Preparation

This project was created with


    mkdir dj-allauth
    bash prepare.bash

Activate development environment


    source venv/bin/activate
    django-admin startproject project .
    python manage.py startapp app

# Back-end

The working environment can be initially initiated by running `bash prepare.bash`
script.

The back-end part of the project can be launched independently with


    source venv/bin/activate.fish

Create migrations on model change


    python manage.py makemigrations
    python manage.py migrate

Finally, start the server for testing


    python manage.py runserver localhost:8080

# Development and testing

Create super user for the django admin


    python manage.py createsuperuser

Use `httpie` for testing
