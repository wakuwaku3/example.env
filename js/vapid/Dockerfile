FROM node:12-buster

LABEL Name="example.vapid.web"
LABEL Version="1.0.0"

ENV GITHUB_USER_NAME=GITHUB-user-name
ENV GITHUB_TOKEN=GITHUB-token
ENV GITHUB_EMAIL=GITHUB-email
ENV REACT_APP_API_URL="http://127.0.0.1:54000"
ENV REACT_APP_BASE_URL="http://127.0.0.1:54010"
ENV REACT_APP_VAPID_PUBLIC_KEY=key

WORKDIR /
ADD ./init.sh init.sh

RUN mkdir -p /repo
VOLUME /repo
WORKDIR /repo

EXPOSE 3000
CMD ["bash", "/init.sh"]
