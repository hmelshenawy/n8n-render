FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-full \
    && rm -rf /var/lib/apt/lists/*

ENV PIP_BREAK_SYSTEM_PACKAGES=1

RUN mkdir -p /home/node/.n8n/custom \
 && cd /home/node/.n8n/custom \
 && npm install n8n-nodes-serpapi

USER node
