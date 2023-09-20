FROM python:3.10.8-slim-buster

ENV PYTHONUNBUFFERED=1

RUN apt-get update
RUN apt-get install gettext -y
WORKDIR /scale_django

COPY ./requirements.txt ./
RUN pip3 install -r requirements.txt

COPY . /scale_django/
EXPOSE 8000
RUN ["chmod","+x","docker-entrypoint.sh"]
ENTRYPOINT ["/bin/sh","docker-entrypoint.sh"]