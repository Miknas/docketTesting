FROM ubuntu:14.04
MAINTAINER Your Name <marko@symphony.io>

RUN apt-get update
RUN apt-get upgrade -y

RUN mkdir -p /myapp
WORKDIR /myapp
COPY . .

RUN apt-get install -y python python-setuptools python-pip
RUN pip install -r requirements.txt

CMD python app.py