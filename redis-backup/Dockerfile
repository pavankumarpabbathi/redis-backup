# Use Amazon Linux 2 as the base image
FROM amazonlinux:2

LABEL maintainer="Accern DevOps <devops@accern.com>"

# Update and install necessary dependencies
RUN yum -y update && \
    yum install -y \
    curl \
    sudo \
    rpm \
    tar

# Import the Microsoft repository key
RUN rpm --import https://packages.microsoft.com/keys/microsoft.asc

# Create local azure-cli repository information
RUN echo -e "[azure-cli]\n\
name=Azure CLI\n\
baseurl=https://packages.microsoft.com/yumrepos/azure-cli\n\
enabled=1\n\
gpgcheck=1\n\
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/azure-cli.repo

# Install Azure CLI
ARG AZURE_CLI_VERSION=2.62.0
RUN yum install -y azure-cli-${AZURE_CLI_VERSION}-1.el7

RUN amazon-linux-extras install redis6 -y

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

# Clean up
RUN yum clean all && \
    rm -rf /var/cache/yum

# Verify installation
RUN az --version

# Set the default command to bash
CMD ["/bin/bash"]
