FROM ubuntu:latest

RUN apt update && apt install -y \
    curl \
    jq \
    ca-certificates

RUN curl "https://github.com/GitTools/GitVersion/releases/download/5.1.3/gitversion-linux-5.1.3.tar.gz" -O gitversion.tar.gz \
    tar -xvzf gitversion.tar.gz \
    rm -rf gitversion.tar.gz \
    mv GitVersion /usr/bin/GitVersion \
    chmod +x /usr/bin/GitVersion