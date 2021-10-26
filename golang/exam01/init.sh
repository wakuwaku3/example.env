#!/bin/bash
cd /

git config --global user.name ${BACKLOG_USER_NAME}
git config --global user.email ${BACKLOG_EMAIL}
git config --global url."https://${BACKLOG_EMAIL_ENCODED}:${BACKLOG_TOKEN}@${BACKLOG_EXAM01_DOMAIN}/".insteadOf "https://${BACKLOG_EXAM01_DOMAIN}/"

if [ ! -d /repo/.git ]; then
  git clone ${BACKLOG_EXAM01_GIT_URL} repo
fi

cd /repo/

sh -c "while :; do sleep 10; done"
