FROM amazonlinux:2

LABEL maintainer="Accern DevOps <devops@accern.com>"

ARG VERSION
ARG VERSION_READABLE

ENV VERSION=$VERSION
ENV VERSION_READABLE=$VERSION_READABLE

RUN yum -y update && \
    yum install -y curl awscli tar && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

RUN amazon-linux-extras install redis6 -y    
