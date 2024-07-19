FROM ubuntu:latest

LABEL maintainer="Accern DevOps <devops@accern.com>"

RUN apt -y update

RUN apt -y install curl

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

RUN apt -y install redis-tools 

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

# Set the default command to bash
CMD ["/bin/bash"]
