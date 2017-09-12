## `maven:3-jdk-7-slim`

```console
$ docker pull maven@sha256:f9ff5b16be8e043d9f49bc7a0760b6629ac4483b5d42cdfe5b3eb0de2079ca34
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-slim` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158270436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb181f8d0c77584ec4ee8d0f2a616b655a5da834bb8fa58b4a16659829f958e5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 07 Sep 2017 23:05:00 GMT
ADD file:bdab114a5717b42a5e02e6f602d5eeb48fc998a60d200704b4da1a7ce8552775 in / 
# Thu, 07 Sep 2017 23:05:01 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 08:52:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 08:52:16 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 08:52:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Sep 2017 08:52:18 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 08 Sep 2017 08:52:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 08 Sep 2017 08:52:19 GMT
ENV JAVA_VERSION=7u151
# Fri, 08 Sep 2017 08:52:19 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Fri, 08 Sep 2017 08:53:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 11 Sep 2017 17:53:11 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 11 Sep 2017 17:53:11 GMT
ARG USER_HOME_DIR=/root
# Mon, 11 Sep 2017 17:53:11 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 11 Sep 2017 17:53:12 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 11 Sep 2017 17:53:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN apt-get update &&     apt-get install -y       curl   && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 17:53:37 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 11 Sep 2017 17:53:37 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 11 Sep 2017 17:53:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 11 Sep 2017 17:53:39 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 11 Sep 2017 17:53:40 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 11 Sep 2017 17:53:40 GMT
VOLUME [/root/.m2]
# Mon, 11 Sep 2017 17:53:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 11 Sep 2017 17:53:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:065132d9f7059b525640520932c776949f4d0d744b65429f1026f3d4d9b3615a`  
		Last Modified: Thu, 07 Sep 2017 23:11:57 GMT  
		Size: 30.1 MB (30113134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2407ceaa40e946bd4d5b271cfd98a70515099c84edb8f487ca9d206eb492018`  
		Last Modified: Sat, 09 Sep 2017 00:32:10 GMT  
		Size: 258.7 KB (258702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e996de5daf9c740dfb8c9e5d8c6aa328d7ace73799ec80500a92d23f30ba21f4`  
		Last Modified: Sat, 09 Sep 2017 00:32:09 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f93740825f716133a99911ac3b1845baff9e883cc818381e25ca05d441f5a6f`  
		Last Modified: Sat, 09 Sep 2017 00:32:09 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c409dee4973f39fc1b881b248a45e85009c034e463a7fcf55aa40e2bccffc7`  
		Last Modified: Sat, 09 Sep 2017 00:32:32 GMT  
		Size: 118.2 MB (118187505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d691fa2e1b2b3b8e3ab7bc5ba339f20f373c87424af9ca7901337b49561b862`  
		Last Modified: Mon, 11 Sep 2017 18:02:15 GMT  
		Size: 1.0 MB (1036898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4f62e390e4b32d59f052981f5dcf9ae06112054fbdd5f54e110a78f628f138`  
		Last Modified: Mon, 11 Sep 2017 18:02:16 GMT  
		Size: 8.7 MB (8672749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f8508897a802072f36f4a2aa7633def70519840669ea7816f85e9fc8615a91`  
		Last Modified: Mon, 11 Sep 2017 18:02:14 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba8ed56913f027440e5dbc6b480581e29030ebe778a761959342a96b72e0452`  
		Last Modified: Mon, 11 Sep 2017 18:02:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip