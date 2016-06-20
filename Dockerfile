FROM ubuntu:xenial

ARG TERM=linux
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get -y upgrade 
RUN apt-get install -y mdbtools sqlite3 unzip

RUN mkdir /db
WORKDIR /db
ADD http://www.rsm.govt.nz/online-services-resources/pdf-and-documents-library/tools/spectrum-search-lite/prism.zip /db/
COPY create-db.sh .

RUN unzip prism.zip
RUN ./create-db.sh

VOLUME /db

