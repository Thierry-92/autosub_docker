FROM jfloff/alpine-python:2.7-slim
MAINTAINER T-Ri

ADD https://github.com/BenjV/autosub/archive/master.zip /opt/
WORKDIR /opt/

RUN apk update 
RUN unzip master.zip
RUN pip install cheetah six

RUN rm -rf /opt/master.zip
EXPOSE 9960
WORKDIR /opt/autosub-master/

CMD ["python", "-c /config", "AutoSub.py"]
