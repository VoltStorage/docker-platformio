FROM python:2.7

MAINTAINER David Bauske <david.bauske@voltstorage.com>

RUN cd

RUN apt-get update

RUN pip install platformio
RUN pio platforms install espressif8266
