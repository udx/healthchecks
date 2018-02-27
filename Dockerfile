FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code

ENV DB_PORT=3306
ENV SITE_ROOT="http://localhost:8000"

ADD requirements.txt /code/
RUN pip install -r requirements.txt
RUN pip install mysqlclient
RUN apt-get update
RUN apt-get install -y mysql-client

ADD . /code/
