#!/bin/bash
set -e

trap 'echo >&2 Ctrl+C captured, exiting; exit 1' SIGINT

image="$1"; shift

docker build --pull -t repo-info -q . > /dev/null

name="repo-info-$RANDOM"
trap "docker rm -f '$name-data' '$name' > /dev/null" EXIT

docker create \
	--name "$name-data" \
	-v /etc/apt \
	-v /usr/share/doc \
	-v /var/lib/dpkg \
	"$image" \
	bogus > /dev/null

docker run -d --name "$name" --volumes-from "$name-data" repo-info > /dev/null

echo '# `'"$image"'`'
docker logs -f "$name"
