FROM node:10-alpine

ARG CLI_VERSION=1.16.122

RUN echo ${CLI_VERSION}
RUN apk -uv add --no-cache python python-dev py-pip build-base groff jq less g++ make && \
    pip install --no-cache-dir awscli==$CLI_VERSION
