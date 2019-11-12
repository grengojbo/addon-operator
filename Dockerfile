FROM flant/addon-operator:latest-alpine3.9

LABEL maintainer Oleg Dolya <oleg.dolya@gmail.com>

RUN apk --update --no-cache add sshpass zip groff less curl git mailcap \
  bash bash-completion jq openssh-client openssl ca-certificates && \
  rm -rf /var/cache/apk/*

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.16.2/bin/linux/amd64/kubectl && \
  chmod +x ./kubectl && \
  mv ./kubectl /usr/local/bin/kubectl

ADD .bashrc /root/.bashrc

ADD modules /modules
