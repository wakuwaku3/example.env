FROM buildpack-deps:buster-scm

LABEL Name="example.golang.next"
LABEL Version="1.0.0"

ENV GITHUB_USER_NAME=GITHUB-user-name
ENV GITHUB_TOKEN=GITHUB-token
ENV GITHUB_EMAIL=GITHUB-email
ENV DB_HOST=db
ENV DB_PORT=5432
ENV DB_USER=admin_01
ENV DB_PASSWORD=password
ENV DB_NAME=sample_db_01

WORKDIR /
ADD ./init.sh init.sh

RUN apt update
RUN apt install -y gcc
RUN mkdir /go-old
WORKDIR /go-old
RUN wget https://golang.org/dl/go1.16.2.linux-amd64.tar.gz
RUN tar -xzf go1.16.2.linux-amd64.tar.gz
ENV GOROOT_BOOTSTRAP="/go-old/go/"

RUN git clone https://go.googlesource.com/go /goroot 
WORKDIR /goroot
RUN git checkout dev.go2go
WORKDIR /goroot/src
RUN ./make.bash

ENV PATH=$PATH:/go/bin

VOLUME /root
WORKDIR /root

EXPOSE 8080
CMD ["bash", "/init.sh"]
