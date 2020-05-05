FROM golang:1.14-buster

LABEL Name="example.vapid.go"
LABEL Version="1.0.0"

ENV GITHUB_USER_NAME=GITHUB-user-name
ENV GITHUB_TOKEN=GITHUB-token
ENV GITHUB_EMAIL=GITHUB-email
ENV VAPID_PUBLIC_KEY=key
ENV VAPID_PRIVATE_KEY=key

WORKDIR /
ADD ./init.sh init.sh

VOLUME /go
RUN mkdir -p /repo
VOLUME /repo
WORKDIR /repo

EXPOSE 8080
CMD ["bash", "/init.sh"]
