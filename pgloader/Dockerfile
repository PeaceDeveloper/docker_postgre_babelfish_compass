FROM python:3.10

WORKDIR /pgloader

RUN apt-get update

RUN apt-get install -y sbcl unzip libsqlite3-dev make curl gawk freetds-dev libzip-dev

# RUN apt-get update -y && apt-get install pgloader -y

RUN wget https://github.com/dimitri/pgloader/archive/refs/heads/master.zip

RUN unzip master.zip

RUN mv pgloader-master /opt/pgloader

RUN cd /opt/pgloader && make save

# RUN ./build/bin/pgloader --help

#install vi
RUN apt-get update && apt-get install -y vim

RUN apt-get install -y postgresql postgresql-contrib

RUN apt-get install -y unixodbc

RUN apt-get update -y && apt-get install -y curl gnupg g++ unixodbc-dev
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/debian/10/prod.list > /etc/apt/sources.list.d/mssql-release.list 

RUN exit
RUN apt-get update
RUN ACCEPT_EULA=Y apt-get install -y msodbcsql17
# optional: for bcp and sqlcmd
RUN ACCEPT_EULA=Y apt-get install -y mssql-tools

RUN echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc \
  && . ~/.bashrc

# FROM dimitri/pgloader:latest

# Keep the container running
CMD ["bash", "-c", "while true; do sleep 30; done;"]
