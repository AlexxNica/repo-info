## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:f8d64d437086aafd62cd261bcc68b2dc12ae95eb9b7423b7787bf8114de676de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:9d7a63436cea1591fb0ea6edaec8c3dfc9bd764318b83f513c0736a4d570d7e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24493223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0d1c5e7643c385f2a72c4969331f0f85d0f14f866615b97c35c5cfc5441a64`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 19:57:11 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 01 Dec 2017 20:53:02 GMT
RUN apk add --no-cache tzdata bash
# Fri, 01 Dec 2017 20:53:27 GMT
ENV INFLUXDB_VERSION=1.4.2
# Fri, 01 Dec 2017 20:53:36 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 01 Dec 2017 20:53:37 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 01 Dec 2017 20:53:37 GMT
EXPOSE 8086/tcp
# Fri, 01 Dec 2017 20:53:37 GMT
VOLUME [/var/lib/influxdb]
# Fri, 01 Dec 2017 20:53:38 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 01 Dec 2017 20:53:38 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Fri, 01 Dec 2017 20:53:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 01 Dec 2017 20:53:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ff176d481367411591b2d81a3bb7bc2d2e2c76822d5ad20ff82628dbc61c69`  
		Last Modified: Fri, 01 Dec 2017 19:57:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b500b7a9ad73e7729ae8e95f9acc3e54764279b2331d81b7cf641ff67c28461`  
		Last Modified: Fri, 01 Dec 2017 20:53:56 GMT  
		Size: 1.5 MB (1504394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4273b9f15ee26deff94f4ad6cf1f8eb3b703fdf55009cdba9f2cae3d4778b455`  
		Last Modified: Fri, 01 Dec 2017 20:54:41 GMT  
		Size: 21.0 MB (20995576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5163952abda86747718463695b18ab09c724993cd99b99f0d6b4ba8564000b73`  
		Last Modified: Fri, 01 Dec 2017 20:54:29 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1299e8ba1eb64f07588a3736112a2fbdd93d0f0ef53b8791c5ba743ea68305`  
		Last Modified: Fri, 01 Dec 2017 20:54:29 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c0699da35bd5433b826e4ed4f0688a0684cb912e6325cb5d16251421bdf90e9`  
		Last Modified: Fri, 01 Dec 2017 20:54:30 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
