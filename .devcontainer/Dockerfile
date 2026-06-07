FROM node:22-bookworm-slim

RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

SHELL ["/bin/bash", "-c"]
