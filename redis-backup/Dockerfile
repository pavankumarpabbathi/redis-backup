FROM paulbouwer/azure-cli:2.53.1

LABEL maintainer="Accern DevOps <devops@accern.com>"

RUN  apt -y update     

RUN  apt -y install redis-tools

# Verify installation
RUN az --version

RUN redis-cli -v 

RUN kubectl version

# Set the default command to bash
CMD ["/bin/bash"]
