# Use Amazon Linux 2 as the base image
FROM paulbouwer/k8s-cli:1.30.3

LABEL maintainer="Accern DevOps <devops@accern.com>"

RUN  apt-get -y update &&
     apt-get install redis-tools

# Verify installation
RUN az --version

RUN redis-cli -v 

RUN kubectl version

# Set the default command to bash
CMD ["/bin/bash"]
