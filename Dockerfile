FROM docker.n8n.io/n8nio/n8n:latest-debian

USER root

# Since this is a modern version, 'apt-get' will work perfectly 
# without any "magic" archive fixes!
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-full \
    && rm -rf /var/lib/apt/lists/*

# This is often needed in modern Debian to allow pip to install things
ENV PIP_BREAK_SYSTEM_PACKAGES=1

RUN npm install n8n-nodes-serpapi

USER node
