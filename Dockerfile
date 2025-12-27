FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN apk update && apk add --no-cache \
    python3 \
    py3-pip \
    py3-virtualenv

ENV PIP_BREAK_SYSTEM_PACKAGES=1

RUN mkdir -p /home/node/.n8n/custom \
 && cd /home/node/.n8n/custom \
 && npm install n8n-nodes-serpapi

USER node

