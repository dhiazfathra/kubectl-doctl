FROM atlassian/default-image:2

# Uncomment this to get the latest stable version of kubectl
# RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \

# I personally use v1.15.xx because v1.16 and above messed up with the helm script I wrote previously
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.11/bin/linux/amd64/kubectl \
 && chmod u+x ./kubectl \
 && mv kubectl /usr/local/bin \
 && curl -LO https://github.com/digitalocean/doctl/releases/download/v1.39.0/doctl-1.39.0-linux-amd64.tar.gz \
 && tar xzvf doctl-1.30.0-linux-amd64.tar.gz \
 && chmod u+x ./doctl \
 && mv doctl /usr/local/bin

