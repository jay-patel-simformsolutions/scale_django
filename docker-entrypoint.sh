#!/bin/bash
python manage.py collectstatic --no-input
python manage.py migrate
python manage.py loaddata fixtures.json
python manage.py runserver 0.0.0.0:8000