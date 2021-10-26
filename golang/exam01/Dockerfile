FROM golang:1.17-buster

LABEL Name="exam01"
LABEL Version="1.0.0"

ENV BACKLOG_USER_NAME=user-name
ENV BACKLOG_TOKEN=token
ENV BACKLOG_EMAIL=email
ENV BACKLOG_EMAIL_ENCODED=email
ENV BACKLOG_API_KEY=api-key
ENV BACKLOG_EXAM01_DOMAIN=nulab-xxxx.backlog.jp
ENV BACKLOG_EXAM01_GIT_URL=https://nulab-xxxx.backlog.jp/git/yyyy/zzzz.git
ENV BACKLOG_CLI_SQLITE_PATH=db

WORKDIR /
ADD ./init.sh init.sh

VOLUME /go
RUN mkdir -p /repo
VOLUME /repo
WORKDIR /repo

EXPOSE 8080
CMD ["bash", "/init.sh"]
