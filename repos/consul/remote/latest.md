## `consul:latest`

```console
$ docker pull consul@sha256:14970aaa99327a33d4c1c12a8596bebedba434923e70cd077488202745eb7a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:32faea9dda302c5b5ed571cbc6dfa73c9292db067140ca0e1563db0712d8e3b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14002092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c88a9c787af1fb65b6d2cb371a86eb0d16900cf12334e488e7d17efa54f1d26`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Fri, 15 Dec 2017 18:50:32 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Fri, 15 Dec 2017 18:50:32 GMT
ENV CONSUL_VERSION=1.0.2
# Fri, 15 Dec 2017 18:50:33 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 15 Dec 2017 18:50:33 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 15 Dec 2017 18:50:42 GMT
RUN apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 15 Dec 2017 18:50:42 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 15 Dec 2017 18:50:43 GMT
VOLUME [/consul/data]
# Fri, 15 Dec 2017 18:50:43 GMT
EXPOSE 8300/tcp
# Fri, 15 Dec 2017 18:50:43 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Fri, 15 Dec 2017 18:50:43 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Fri, 15 Dec 2017 18:50:44 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Fri, 15 Dec 2017 18:50:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 15 Dec 2017 18:50:44 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce11e911966bbefcfdeffe370cb0b7ab940768e88d1b493d35a375e3e2303db`  
		Last Modified: Fri, 15 Dec 2017 18:50:57 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab2a5dc9a61e587c223335fb8db593c4ae9349dc34d2dcf7af25bd04faa1c10`  
		Last Modified: Fri, 15 Dec 2017 18:51:00 GMT  
		Size: 11.9 MB (11934106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fabb67845b3766f69c3c13aa50c8c9bf0b8437ee4d39106a22d0a8801ee77`  
		Last Modified: Fri, 15 Dec 2017 18:50:56 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5593297b3ca88278a9631de0d2d5d8a932c0dba42486e4f5dfea713a0a2d938`  
		Last Modified: Fri, 15 Dec 2017 18:50:57 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
