FROM python:3.7-alpine
MAINTAINER Mesquite Root Development

ENV PYTHONUNBUFFERED 1

#Install dependancies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Setup directiory structure
RUN mkdir /app
WORKDIR /app
COPY ./app/ /app

RUN adduser -D user
USER user
