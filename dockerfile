FROM ubuntu:22.04

# Install dependencies
RUN apt update && \
    apt install -y software-properties-common wget curl git openssh-client tmate python3 && \
    apt clean

# Create a dummy index page to keep the service alive
RUN mkdir -p /app && echo "Tmate Session Running..." > /app/index.html
WORKDIR /app

# Expose a fake web port to trick Railway into keeping container alive
EXPOSE 6080
