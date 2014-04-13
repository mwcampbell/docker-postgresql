#!/bin/sh
set -e
if [ -z "$1" ]
then
  echo "Usage: $0 username" >&2
  exit 1
fi
username="$1"
git submodule update --init
docker rmi $username/postgresql-build || true
docker rmi $username/postgresql || true
docker build --rm -t=$username/postgresql-build .
docker run --rm $username/postgresql-build cat /runtime.tar > runtime/runtime.tar
docker build --rm -t=$username/postgresql runtime
rm runtime/runtime.tar
docker rmi $username/postgresql-build
