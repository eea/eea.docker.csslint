#!/bin/sh
set -e

CMD="$1"

if [[ ${CMD:0:4} = "http" ]]; then
  GIT_SRC=$1
  CMD="csslint"
fi

if [[ ${CMD:0:3} = "git" ]]; then
  GIT_SRC=$1
  CMD="csslint"
fi

if [[ ${CMD:0:1} = "-" ]]; then
  exec csslint "$@"
fi

if [ ! -z "$GIT_SRC" ]; then
  cd /code
  git clone $GIT_SRC
fi

if [ "$CMD" = "csslint" ]; then
  csslint $PARAMS /code
else
  exec "$@"
fi
