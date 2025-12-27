FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN npm install n8n-nodes-serpapi

USER node 
