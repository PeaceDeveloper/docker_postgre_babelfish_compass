FROM ubuntu:20.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install Java, wget, and other necessary tools
RUN apt-get update && \
    apt-get install -y openjdk-8-jre wget curl unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

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
