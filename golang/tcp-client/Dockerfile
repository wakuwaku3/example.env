FROM golang:1.16-buster

LABEL Name="example.tcp-client.go"
LABEL Version="1.0.0"

ENV GITHUB_USER_NAME=GITHUB-user-name
ENV GITHUB_TOKEN=GITHUB-token
ENV GITHUB_EMAIL=GITHUB-email
ENV TCP_SERVER_HOST=tcp-server
ENV TCP_SERVER_PORT=2001

WORKDIR /
ADD ./init.sh init.sh

VOLUME /go
RUN mkdir -p /repo
VOLUME /repo
WORKDIR /repo

EXPOSE 8080
CMD ["bash", "/init.sh"]
