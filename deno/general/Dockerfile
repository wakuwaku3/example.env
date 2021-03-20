FROM buildpack-deps:buster-scm

LABEL Name="example.deno.general"
LABEL Version="1.0.0"

RUN apt -qq update \
  && apt -qq -y install curl zip unzip make \
  && curl -fsSL https://deno.land/x/install/install.sh | sh \
  && apt -qq clean
ENV DENO_INSTALL=/root/.deno
ENV PATH=$PATH:$DENO_INSTALL/bin

ENV GITHUB_USER_NAME=GITHUB-user-name
ENV GITHUB_TOKEN=GITHUB-token
ENV GITHUB_EMAIL=GITHUB-email

WORKDIR /
ADD ./init.sh init.sh

VOLUME /root
WORKDIR /root

CMD ["bash", "/init.sh"]
