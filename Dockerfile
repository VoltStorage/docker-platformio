FROM python:2.7

MAINTAINER David Bauske <david.bauske@voltstorage.com>

RUN cd

RUN apt-get update

RUN mkdir ~/.ssh
RUN chmod 700 ~/.ssh

RUN pip install platformio
RUN pio platforms install espressif8266

RUN git clone https://github.com/igrr/mkspiffs
RUN cd mkspiffs
RUN make dist
RUN cp mkspiffs /bin/
RUN cd
RUN rm -R mkspiffs