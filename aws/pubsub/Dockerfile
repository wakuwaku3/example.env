FROM buildpack-deps:buster-scm

LABEL Name="example.pubsub.aws"
LABEL Version="1.0.0"

ENV GITHUB_USER_NAME=GITHUB-user-name
ENV GITHUB_TOKEN=GITHUB-token
ENV GITHUB_EMAIL=GITHUB-email
ENV AWS_ACCESS_KEY_ID=key
ENV AWS_SECRET_ACCESS_KEY=key
ENV AWS_DEFAULT_REGION=ap-northeast-1
ENV AWS_PREFIX=Prod
ENV AWS_NEW_USER_PASSWORD=password

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN apt update
RUN apt install -y unzip gettext-base less
RUN apt install --reinstall make
RUN unzip awscliv2.zip
RUN ./aws/install
RUN aws --version

WORKDIR /
ADD ./init.sh init.sh

RUN mkdir -p /repo
VOLUME /repo
WORKDIR /repo

EXPOSE 8080
CMD ["bash", "/init.sh"]
