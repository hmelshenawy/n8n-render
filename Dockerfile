# Use the Debian-based image (better for Python/Data Science)
FROM docker.n8n.io/n8nio/n8n:latest-debian

USER root

# Now apt-get WILL work (make sure your line endings are LF!)
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN npm install n8n-nodes-serpapi

USER node
