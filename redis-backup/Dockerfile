FROM bitnami/azure-cli:latest

LABEL maintainer="Accern DevOps <devops@accern.com>"

ARG VERSION
ARG VERSION_READABLE

ENV VERSION=$VERSION
ENV VERSION_READABLE=$VERSION_READABLE

RUN apt-get -y update && \
    apt-get -y install tar && \
    curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.29.3/2024-04-19/bin/linux/amd64/kubectl && \
    # curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

#RUN amazon-linux-extras install redis6 -y

RUN apt-get install redis-tools

RUN redis-cli -v
