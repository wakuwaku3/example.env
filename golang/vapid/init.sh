#!/bin/bash
cd /

git config --global user.name ${GITHUB_USER_NAME}
git config --global user.email ${GITHUB_EMAIL}
git config --global url."https://${GITHUB_USER_NAME}:${GITHUB_TOKEN}@github.com/".insteadOf "https://github.com/"

if [ ! -d /repo/.git ]; then
  git clone https://github.com/wakuwaku3/example-vapid.go.git repo
fi

cd /repo/

sh -c "while :; do sleep 10; done"
