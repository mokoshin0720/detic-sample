FROM python:3.9

RUN mkdir /detic-sample
COPY . /detic-sample/
WORKDIR /detic-sample/

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

RUN apt-get -y install libgl1-mesa-dev

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip3 install torch torchvision --extra-index-url https://download.pytorch.org/whl/cu116