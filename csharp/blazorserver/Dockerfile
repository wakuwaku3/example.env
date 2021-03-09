FROM mcr.microsoft.com/dotnet/sdk:5.0

LABEL Name="example.blazorserver.csharp"
LABEL Version="1.0.0"

ENV GITHUB_USER_NAME=GITHUB-user-name
ENV GITHUB_TOKEN=GITHUB-token
ENV GITHUB_EMAIL=GITHUB-email

WORKDIR /
ADD ./init.sh init.sh

VOLUME /root
WORKDIR /root

EXPOSE 8080
CMD ["bash", "/init.sh"]
