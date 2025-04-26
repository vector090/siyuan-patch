#!/bin/bash

# this file is to build kernel manually and run.
# useful when frequently modifying src code.

go version || apt install -y golang

export GO111MODULE=on
export CGO_ENABLED=1


if [[ ! -d siyuan ]]
then
./_get-src.sh
fi

echo building
(cd siyuan/kernel/ && go build --tags fts5 -v -ldflags "-s -w")

# after build,
# cd ../app
# ln -s ../kernel/kernel
# and run by:
# ./kernel --accessAuthCode=123456

