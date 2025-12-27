FROM docker.n8n.io/n8nio/n8n:latest

USER root
RUN apk add --update --no-cache python3 py3-pip
RUN npm install n8n-nodes-serpapi

USER node 
