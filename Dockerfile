FROM python:3.9

RUN pip install websockets
RUN pip install asyncio

WORKDIR /app

COPY . /app

EXPOSE 8080/tcp
