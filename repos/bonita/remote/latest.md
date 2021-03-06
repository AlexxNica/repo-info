## `bonita:latest`

```console
$ docker pull bonita@sha256:dae08224ebfbaed2c7b4d0c072287124bcb5979c43af42388937a2dc959d2b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:22f2b3d43a44500f61998df462d231a9b4a554be6faa0cf65130a7edae29ae53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214575383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b726734b9f0ef23f926b8c8e100215763d36f2058129c49f49b682b1d1c65eb`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:25:52 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 14 Dec 2017 21:26:21 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 21:26:22 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 14 Dec 2017 21:26:23 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 14 Dec 2017 21:26:25 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 14 Dec 2017 21:26:29 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 14 Dec 2017 21:26:29 GMT
ARG BONITA_VERSION
# Thu, 14 Dec 2017 21:26:30 GMT
ARG TOMCAT_VERSION
# Thu, 14 Dec 2017 21:26:30 GMT
ARG BONITA_SHA256
# Thu, 14 Dec 2017 21:26:30 GMT
ARG BONITA_URL
# Thu, 14 Dec 2017 21:26:57 GMT
ENV BONITA_VERSION=7.6.0
# Thu, 14 Dec 2017 21:26:57 GMT
ENV TOMCAT_VERSION=8.5.23
# Thu, 14 Dec 2017 21:26:57 GMT
ENV BONITA_SHA256=3014eec53f7af8798643c550f1cbf790a026996682bd08d7fd2ad249926b2884
# Thu, 14 Dec 2017 21:26:58 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaCommunity-7.6.0-Tomcat-8.5.23.zip
# Thu, 14 Dec 2017 21:27:08 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Dec 2017 21:27:10 GMT
RUN sha256sum /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Dec 2017 21:27:11 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 14 Dec 2017 21:27:11 GMT
VOLUME [/opt/bonita]
# Thu, 14 Dec 2017 21:27:11 GMT
COPY dir:51cae34a9f926694e06cb37a0d3000cce2a31bacd068a5e4063c9538c5b442b2 in /opt/files 
# Thu, 14 Dec 2017 21:27:12 GMT
COPY dir:bf2dedb23bc519a44c659d7c427286aeff88660b1f5d1b94b623bd36678a676e in /opt/templates 
# Thu, 14 Dec 2017 21:27:12 GMT
EXPOSE 8080/tcp
# Thu, 14 Dec 2017 21:27:12 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2878afe5a5a83db5d70bcdf51bf7c252a3a95ac0bc5a371fece43b75dd4cba4e`  
		Last Modified: Thu, 14 Dec 2017 21:27:47 GMT  
		Size: 82.7 MB (82653769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bae80266d549ecfc8d63902cf706d35a5ff7bda42b0539f7dad0051150bde71`  
		Last Modified: Thu, 14 Dec 2017 21:27:30 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d781236de934d5bf03813ff6a272d30c22cf86dedd4fe82ec4ad44a1d44db37`  
		Last Modified: Thu, 14 Dec 2017 21:27:30 GMT  
		Size: 2.0 KB (2040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1d2d9af6f4012319ae58ef6f5b6e2d8bc6b5f14daee27ca16466d09276059c`  
		Last Modified: Thu, 14 Dec 2017 21:27:28 GMT  
		Size: 133.2 KB (133184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ac9ab67e6a30573c9b3e7fc5dd7568b6858821b91dc244375c1889da48c44b`  
		Last Modified: Thu, 14 Dec 2017 21:27:28 GMT  
		Size: 818.6 KB (818558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3cca5bf38d19a584c627f59ee939a9705facba0e7f22bcf311558ac7f32f4f0`  
		Last Modified: Thu, 14 Dec 2017 21:34:27 GMT  
		Size: 88.2 MB (88214031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c297a6b8bec32f2fd0fe207c27acbc71e1d0343e596941c9d436c0aea70cc1`  
		Last Modified: Thu, 14 Dec 2017 21:34:20 GMT  
		Size: 6.4 KB (6376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd548d64e14f352e2c169bdfd8591dd41d3ef8a8b0d22f6ed55487e5dc6c9e0c`  
		Last Modified: Thu, 14 Dec 2017 21:34:20 GMT  
		Size: 1.6 KB (1605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
