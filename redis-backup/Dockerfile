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

##Commands for Installing AzCLI
RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc 

RUN sh -c 'echo -e "[azure-cli]
    name=Azure CLI
    baseurl=https://packages.microsoft.com/yumrepos/azure-cli
    enabled=1
    gpgcheck=1
    gpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/azure-cli.repo'

RUN yum update -y && \
    yum install azure-cli

RUN amazon-linux-extras install redis6 -y
