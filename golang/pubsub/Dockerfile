FROM golang:1.14-buster

LABEL Name="example.pubsub.go"
LABEL Version="1.0.0"

ENV GITHUB_USER_NAME=GITHUB-user-name
ENV GITHUB_TOKEN=GITHUB-token
ENV GITHUB_EMAIL=GITHUB-email
ENV AWS_ACCESS_KEY_ID=key
ENV AWS_SECRET_ACCESS_KEY=key
ENV AWS_DEFAULT_REGION=ap-northeast-1
ENV AWS_PREFIX=Prod

WORKDIR /
ADD ./init.sh init.sh

VOLUME /go
RUN mkdir -p /repo
VOLUME /repo
WORKDIR /repo

EXPOSE 8080
CMD ["bash", "/init.sh"]
