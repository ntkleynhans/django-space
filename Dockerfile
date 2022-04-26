FROM python:3.9.5
ENV PYTHONUNBUFFERED 1

WORKDIR /app
COPY requirements.txt /app/requirements.txt

RUN pip install pip --upgrade
RUN pip install -r requirements.txt

COPY rndsite/ /app

