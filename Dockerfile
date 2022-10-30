FROM python:3.9

RUN mkdir /detic-sample
COPY . /detic-sample/
WORKDIR /detic-sample/

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

RUN pip install --upgrade pip
RUN pip install -r requirements.txt