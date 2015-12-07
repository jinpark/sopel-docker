FROM ubuntu:15.04
MAINTAINER Jin Park <jin@jinpark.net>

RUN apt-get update
RUN apt-get install -y git build-essential python3 python3-dev python3-pip ca-certificates libxml2-dev libxslt-dev lib32z1-dev python3-lxml 

ADD requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

RUN useradd sopel
USER sopel
VOLUME /sopel

CMD sopel -c /sopel/default.cfg
