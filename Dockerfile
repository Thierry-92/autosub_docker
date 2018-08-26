FROM jfloff/alpine-python:3.6-slim
MAINTAINER T-Ri

RUN apt update 
RUN apt install -y git

RUN git clone https://github.com/BenjV/autosub.git /app/autosub
RUN pip install Cheetah3

RUN apt clean -y
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 9960
WORKDIR /app/autosub

CMD ["python3", "AutoSub.py"]
