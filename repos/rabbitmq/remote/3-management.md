## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:6b6be1f8a4d57befac70e53ae6391effadde140993b8c20d16d5aa9a1690dff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `rabbitmq:3-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:ce7b330e653a03f34845cfeb2048ee51db81c095dba50770f1485221624ec454
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.7 MB (75682058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c1af531bfa286b607e0e9d0bd6637d0c8c12b399dadb387e487096a118974a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:25:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:25:37 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:25:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_VERSION=3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Thu, 21 Dec 2017 21:43:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Thu, 21 Dec 2017 21:44:19 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 21:44:19 GMT
ENV LANG=C.UTF-8
# Thu, 21 Dec 2017 21:44:19 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 21 Dec 2017 21:44:20 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 21 Dec 2017 21:44:28 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 21 Dec 2017 21:44:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 21 Dec 2017 21:44:37 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 21 Dec 2017 21:44:38 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 21 Dec 2017 21:44:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 21 Dec 2017 21:44:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Dec 2017 21:44:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 21 Dec 2017 21:44:47 GMT
CMD ["rabbitmq-server"]
# Thu, 21 Dec 2017 21:45:24 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 21 Dec 2017 21:45:39 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 21 Dec 2017 21:45:40 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ec28761801c452cb366afa1cbb7946bada161eb77899d9ca9a59a219e9ff42`  
		Last Modified: Tue, 12 Dec 2017 23:26:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa44aa9074bb2e24649ebe2dae2f852f9443a052fd9cdfd4d11bcd86d967f7`  
		Last Modified: Tue, 12 Dec 2017 23:26:38 GMT  
		Size: 27.3 MB (27330555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf3e1e07c991ce96a21e3642cb8dbb20ef673739bb6f4d8b850380b2572f106`  
		Last Modified: Thu, 21 Dec 2017 21:47:31 GMT  
		Size: 12.8 MB (12781820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3ef1cea93bbcaa3a76d6c6e253976b8440ad24969e0ba907e173742c6ff50a`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5ab9c082d6d13b0bb80318aa78027016a9d5673b8a552f065eeca6674c15e0`  
		Last Modified: Thu, 21 Dec 2017 21:47:28 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607d775f273a65211519680d67816f79ac0aa561a7ad364fac03c097c063fffd`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b766cfd2d4024d5591163073df0750727ccb125db1eeb9a92e9f364ed081d`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca5c4856b55a852a371ef4afdddb1d16d94afe44c88221e14d84d8fdd6070df`  
		Last Modified: Thu, 21 Dec 2017 21:47:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24bb85705e9e92239e95be1af2ef6bc9965cf09fb05e6f30a4de1d3aad4e214`  
		Last Modified: Thu, 21 Dec 2017 21:48:31 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffc927f7905fbf60fc741f2b666857c6bc7041d7c12430b915c787fb7a95d78`  
		Last Modified: Thu, 21 Dec 2017 21:48:36 GMT  
		Size: 7.6 MB (7622231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:ffb97a38b0a4fd039b1248ddcfa295fccacc54abdafec1bbf2bc29673b2aea87
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71406814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9606fe70b34d9a161737c5b82040ed0c75238e6fdc8a97629a22c498792cdf07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:15:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:15:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:15:45 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 15:14:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 15:14:59 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 15:15:00 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 15:15:00 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 15:15:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 15:15:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 15:15:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 15:15:03 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 15:15:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 15:15:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 15:15:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 15:15:05 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 15:15:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 15:15:35 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 15:15:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce50058b2ae9912872489ab639895bd412cd17a9a299fe4e208704d0ef03dd1f`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8bff935da4e19ec18fec56ba68c2cf72e41a4ad936934d6927c22d50d69dab`  
		Last Modified: Tue, 12 Dec 2017 23:21:56 GMT  
		Size: 24.8 MB (24837409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e7f60fa5b5600f52ceb2a5f847f939fe4fd9c88497a4af04f1a9e56a3a0226`  
		Last Modified: Fri, 22 Dec 2017 15:15:56 GMT  
		Size: 12.8 MB (12751160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1d9062191080161364b2f92fb7b1bc2983ebc261432e26e2bc529d2025a00f`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2b1a936349f6aef924d33f3b3246245ff7e15ae50f93604d15e363cf2060b9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730970b7986ad9f4e2039724474364f61070660fb564efdf61ce67e5141ac8c9`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207f615d05708cbe302cf9382a9c2b2dc41910c9cf69dc913d7c5c02870c6138`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3005d65e7f419893d506d416f107fd2d6e82fa13eb5c86f95da855ba0dae6683`  
		Last Modified: Fri, 22 Dec 2017 15:15:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081ff403ae0e159713237cec2151bc7947ae5eb26ec78c5fdccb58fa991c0906`  
		Last Modified: Fri, 22 Dec 2017 15:16:11 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1c8daba1791e89d5cfd91acbd604ef8ab72dc642a30aecbd876eb96bbb4dc8`  
		Last Modified: Fri, 22 Dec 2017 15:16:15 GMT  
		Size: 7.5 MB (7472214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:5f8ae6369dc47a4350d6cce1828130cf56d2eade2c5c97fb77337285d5f00338
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68523704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cbac589adc82218f6e8c865d22901877e8dbce390002f44c280ff78cb956edd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:08:31 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:09:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:09:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:07:26 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:07:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:07:56 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:07:56 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:07:56 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:07:57 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:07:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:07:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:08:00 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:08:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:08:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:08:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:08:02 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:08:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:08:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:08:26 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6235a7077293b77a5763b50aeb4468250c3243e9a414e68ade282ba5457045`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de253191eb0702e608f45381e5cf3de24ea4a760bc740b04a51e8bd4f577b6c7`  
		Last Modified: Wed, 13 Dec 2017 14:13:32 GMT  
		Size: 24.5 MB (24541142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b25fd4ba6b057fcbdbc2eec693d0f5c4df5a0459298926d4ad5302470e210de`  
		Last Modified: Fri, 22 Dec 2017 14:08:44 GMT  
		Size: 12.7 MB (12722767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51fcc7b5312d66fe5f92da771aabe0349c6b3ad5d89d2d84858838fe16f4dc4`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a588b73dbd75765122fbcfce25f9fc9c7cf5b6a37369df109328c081651975`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78eddee1ed060160ee996266461b5bc661be8de27a56b8710f605999fce94a55`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0979543707ff6994fd7f35ad5fda8fe9232cb2eb73d09e0a740a9585f4eaefe`  
		Last Modified: Fri, 22 Dec 2017 14:08:42 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f9032304b59cc4b820894fba66c025f4d2617438299f19d22ce540ff0bbf2c`  
		Last Modified: Fri, 22 Dec 2017 14:08:41 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560fb52b7a723a78d283679e1522845627c3982baf9075e153ff9caba4a2c6e4`  
		Last Modified: Fri, 22 Dec 2017 14:09:00 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98661b6f7d96fce4607e860bf2b231817b8af795c3b3880b0d4afb748be1a030`  
		Last Modified: Fri, 22 Dec 2017 14:09:03 GMT  
		Size: 7.2 MB (7182658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:34c06758df278ad0d45b251865ec113771e4c4f6160a6893260436f47a90d07a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70317966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:642b44151b1518e53dd9401a2969cfc02e854e5a21706a750e628e00580a20b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:54:27 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:55:29 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:55:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:55:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:55:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 14:52:43 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 14:52:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 14:53:42 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 14:53:43 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 14:53:43 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 14:53:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 14:53:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 14:53:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 14:53:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 14:53:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 14:53:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 14:53:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 14:53:54 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 14:54:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 14:54:31 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 14:54:31 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf8546d6f1127383410e3244beb4a3873b3305deab0f469ac13d1d0b112dee1`  
		Last Modified: Wed, 13 Dec 2017 15:03:19 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabe4d57c4c33847b3343b87c3d4b7f0efe523535a70b98185a7237848d3780d`  
		Last Modified: Wed, 13 Dec 2017 15:03:23 GMT  
		Size: 24.8 MB (24762935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29da1f88f7abd4ac706158ed66c3edd95c77c626b118d1430d9d987863a8a126`  
		Last Modified: Fri, 22 Dec 2017 14:55:58 GMT  
		Size: 12.7 MB (12745013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d9eb1dcd2f690fa686a4c2c6917a9dac1f2b83e58f873c6fa1c629a5ea35f5`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4be7195e35d31a0b3d5223c2099f6fbede7f22121454696afa9a2cb4dadb95`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ff3a93de492dfc8fd837c437a30e6d9e1360bee1f8243c1f3e7fefd4b9e617`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844056b16c3b8fb059c428a9d4c451310e81bdb909d039ddf20b1ed76ed06e4a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:735d3dd7df678c1257c4ae682480c3e6357b26e308b36d0de392350370c0888a`  
		Last Modified: Fri, 22 Dec 2017 14:55:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9d9cd1604039d8dcc780ea5535ed5d2b43e754b4c8dbbc6464b87db615e420`  
		Last Modified: Fri, 22 Dec 2017 14:56:29 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5119a6a64cf5a4211958e3e08c26929c34993764376cc195584dbd3df977b78`  
		Last Modified: Fri, 22 Dec 2017 14:56:32 GMT  
		Size: 7.5 MB (7474716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:88e98ae119769fd533d75b54562935cdfdc0a4ec8de069ac184c0f062ca989d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76904819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3958ed01dd62112339c25c79d333d9c1b540139cdb90754a53c746e9af743f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:14:52 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 21:15:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:16:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:16:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 11:44:32 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 11:45:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 11:45:06 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 11:45:07 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 11:45:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 11:45:08 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 11:45:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 11:45:10 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 11:45:10 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 11:45:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 11:45:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 11:45:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 11:45:12 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 11:54:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 11:54:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 11:54:27 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e040f21d8962aea7005a7379e4852e408931ff4c1985b8debde30f1bcf14ca`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5bbc5be701d46339ee9aa060f79d61ef2ea60c0a862dc9663bac7b97a8e169`  
		Last Modified: Tue, 12 Dec 2017 21:33:12 GMT  
		Size: 27.5 MB (27520131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9dd9d2d069c706f3eb2155b3dabc19696c54dab8db1f74d481620e43b536063`  
		Last Modified: Fri, 22 Dec 2017 11:55:52 GMT  
		Size: 12.8 MB (12801444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d343d516c0b988f110df224a9f3ee502c2944e219fec1709fbcdef0a2d79fd19`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c56b61dcb2f766abe51f40166e31dbba5e82d9061c43cf893618dacf6e843a`  
		Last Modified: Fri, 22 Dec 2017 11:55:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201b9543f2613c0e5a4e7b0ab82b519914eac5df575950c633193f2c8824d789`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b6e713106094f76728ce4a7295830a2731aec1036997346ad433cd99ae0cc1`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2ee59155be9f185db1c45800e79d5a35f93f7ff635ed223e35ed867144b11f`  
		Last Modified: Fri, 22 Dec 2017 11:55:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3bdc13600fe8a9973af1c8caf48e8546d07c220839f891ce8b46bf4a5f333c`  
		Last Modified: Fri, 22 Dec 2017 11:56:42 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629424091621dfe51b0db70d864cb38b33efd107c9a4010550f31c5681eba5d7`  
		Last Modified: Fri, 22 Dec 2017 11:56:44 GMT  
		Size: 7.7 MB (7713989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:0e54d8ead0bc29cba2295dcb58a83ec697837b76d90a66857db8ae7663c8d644
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73633452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b54de25816f08e4b6129d18d6b378ffd5f3a1e8118da6f6cf60e1fd3f9b6efc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 08:14:18 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 08:15:55 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:15:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:15:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:15:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 22 Dec 2017 08:11:41 GMT
ENV RABBITMQ_VERSION=3.7.1
# Fri, 22 Dec 2017 08:11:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.1
# Fri, 22 Dec 2017 08:11:43 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.1-1
# Fri, 22 Dec 2017 08:13:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 08:13:33 GMT
ENV LANG=C.UTF-8
# Fri, 22 Dec 2017 08:13:35 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 22 Dec 2017 08:13:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 22 Dec 2017 08:13:40 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 22 Dec 2017 08:13:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 22 Dec 2017 08:13:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 22 Dec 2017 08:13:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 22 Dec 2017 08:13:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 22 Dec 2017 08:13:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Dec 2017 08:13:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 22 Dec 2017 08:13:58 GMT
CMD ["rabbitmq-server"]
# Fri, 22 Dec 2017 08:14:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 22 Dec 2017 08:14:38 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 22 Dec 2017 08:14:39 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099a031f5f0df72a460e1d66fecbf4ebbbf062936d2d9a8474264bb64a6a9648`  
		Last Modified: Wed, 13 Dec 2017 08:25:11 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb365591fec586b108056a7461f34fbbecd7f579b59712c6a72e43c3f8a1ef2`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 25.0 MB (25011533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dec33419700d0f4ab4a2c6d04c32e0e811973a45d24dbb741f0e5c544626cd`  
		Last Modified: Fri, 22 Dec 2017 08:16:27 GMT  
		Size: 12.8 MB (12764207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87adf3e9f6eba9ab4607b32716f7215c55a2f806a03c2bccb9f8a257fc04a858`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64119cdea63aa56eedbd3de89d9a94496cabe2b1240b80e04b8d4ff820192c7e`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ad894a8943fd9b3886182a7ecd367c26e00d9dc7760423f84af98660baa32d`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5642e99657653ea39a6ab4e3c63ff62e290143d100ce93a059c6119f4f3bce6`  
		Last Modified: Fri, 22 Dec 2017 08:16:23 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddec69e1fb6fe0e5c70e3e4e7998629d0e99560968d92265991602aa9cc82bbd`  
		Last Modified: Fri, 22 Dec 2017 08:16:22 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f4ea9e63a2c8b47b2305022404e0e900ee894f6a31367c19c3a56dd271883`  
		Last Modified: Fri, 22 Dec 2017 08:16:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2195618c7a990523cf1761b4df3cdfeecdc2fb4ef7e1a0ba32d79107bd984cb`  
		Last Modified: Fri, 22 Dec 2017 08:16:51 GMT  
		Size: 7.8 MB (7825287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
