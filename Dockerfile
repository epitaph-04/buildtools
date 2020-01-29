FROM ubuntu:latest

RUN apt update && apt install -y \
    curl \
    jq \
	tar \
    ca-certificates

RUN curl -L -o gitversion.tar.gz \
	"https://github.com/GitTools/GitVersion/releases/download/5.1.3/gitversion-linux-5.1.3.tar.gz" \
    && tar -xvzf gitversion.tar.gz \
    && rm -rf gitversion.tar.gz \
	&& chmod 0700 GitVersion
    && mv GitVersion /usr/bin