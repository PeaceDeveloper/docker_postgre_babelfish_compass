FROM ubuntu:24.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install -y sbcl unzip libsqlite3-dev make curl gawk freetds-dev libzip-dev

# Install Java, wget, and other necessary tools
RUN apt-get update && \
    apt-get install -y openjdk-8-jre wget curl unzip apt-transport-https software-properties-common && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# RUN apt-get update -y && apt-get install pgloader -y

# RUN wget https://github.com/dimitri/pgloader/archive/refs/heads/master.zip

# RUN unzip master.zip

# RUN cd pgloader-master && make save

# RUN ./build/bin/pgloader --help

#install vi
RUN apt-get update && apt-get install -y vim

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

# ###################################
# # Install PowerShell
# RUN apt-get install -y powershell

# # Start PowerShell
# RUN pwsh

# Download and install Babelfish Compass
RUN mkdir -p /opt/babelfish_compass && \
    cd /opt/babelfish_compass && \
    wget https://github.com/babelfish-for-postgresql/babelfish_compass/releases/download/v2024-07/BabelfishCompass_v2024-07.zip && \
    unzip BabelfishCompass_v2024-07.zip && \
    rm BabelfishCompass_v2024-07.zip && \
    chmod +x BabelfishCompass

# Set working directory
WORKDIR /opt/babelfish_compass

# Keep the container running
CMD ["bash", "-c", "while true; do sleep 30; done;"]
