FROM atlassian/default-image:2
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
 && chmod u+x ./kubectl \
 && mv kubectl /usr/local/bin \
 && curl -LO https://github.com/digitalocean/doctl/releases/download/v1.30.0/doctl-1.30.0-linux-amd64.tar.gz \
 && tar xzvf doctl-1.30.0-linux-amd64.tar.gz \
 && chmod u+x ./doctl \
 && mv doctl /usr/local/bin

