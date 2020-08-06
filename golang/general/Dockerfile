FROM golang:1.14-buster

LABEL Name="example.golang.general"
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

VOLUME /root
WORKDIR /root

EXPOSE 8080
CMD ["bash", "/init.sh"]
