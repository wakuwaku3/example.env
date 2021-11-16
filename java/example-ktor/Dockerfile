FROM gradle:jdk11

LABEL Name="example-ktor"
LABEL Version="1.0.0"

ENV GITHUB_USER_NAME=GITHUB-user-name
ENV GITHUB_TOKEN=GITHUB-token
ENV GITHUB_EMAIL=GITHUB-email
ENV DB_HOST=db
ENV DB_PORT=5432
ENV DB_USER=admin_01
ENV DB_PASSWORD=password
ENV DB_NAME=sample_db_01
ENV TZ=Asia/Tokyo

SHELL ["/bin/bash", "-c"]

RUN cd /usr/lib && \
  wget -q https://github.com/JetBrains/kotlin/releases/download/v1.5.31/kotlin-compiler-1.5.31.zip && \
  unzip kotlin-compiler-*.zip && \
  rm kotlin-compiler-*.zip && \
  rm -f kotlinc/bin/*.bat
ENV PATH $PATH:/usr/lib/kotlinc/bin
RUN apt update
RUN apt install make -y

WORKDIR /
ADD ./init.sh init.sh

RUN mkdir -p /repo
VOLUME /repo
WORKDIR /repo

EXPOSE 8080
CMD ["bash", "/init.sh"]
