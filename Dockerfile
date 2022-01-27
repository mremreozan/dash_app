FROM python:3.8.6-slim-buster

# set working directory in container
WORKDIR /usr/src/app

COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD gunicorn dashboard:server --timeout 600


