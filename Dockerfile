# 017.1 Add Docker File
FROM python:3.7-alpine
MAINTAINER Imaginadom

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# -D Create user that will be used for running application and processes for project.
# User is just a username which can be anything.
RUN adduser -D user
USER user


# 018 Configure Docker Compose