## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:98ec9d2f31f664ba9c81e57d4141592e33f44595c59a717c05b5f2e6844c65a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.1944; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.1944; amd64

```console
$ docker pull nats-streaming@sha256:abc76051637063548d4bf5c8be4a2e892f33c98252f046d2fa61ce73e0074df4
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.2 MB (402170705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5148af5deaa4178cc4b6362a73fe55525aa9671d0748b8ae6c1afb30592885b`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Dec 2017 21:42:41 GMT
RUN Install update 10.0.14393.1944
# Tue, 12 Dec 2017 23:29:56 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 12 Dec 2017 23:29:57 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 19 Dec 2017 23:20:05 GMT
RUN cmd /S /C #(nop) COPY file:7cb5604408645c8d53c674cce139187ac02319c1f621bdbdf9aa64bce09f7c43 in nats-streaming-server.exe 
# Tue, 19 Dec 2017 23:20:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 19 Dec 2017 23:20:07 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4806a44e00a0febaf206c2414777a070782c559757658199cf5e0d8f0ead2bba`  
		Last Modified: Mon, 11 Dec 2017 21:42:41 GMT  
		Size: 146.0 MB (146023673 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2735b5da9778b2ec6c898da8d2a6d18ea0847d7829b0dfeb84c4984ff081b6b2`  
		Last Modified: Tue, 12 Dec 2017 23:30:21 GMT  
		Size: 901.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffdeb52d1d9a81b52afe50aed5444de9bbe059e24e2fd279c8e8709a61609cb`  
		Last Modified: Tue, 12 Dec 2017 23:30:20 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64a258b789d666ed3af6a4a7e9ea6b02c98c3349921f5dfb6b1dd6e8a8624bc`  
		Last Modified: Tue, 19 Dec 2017 23:20:25 GMT  
		Size: 3.5 MB (3452086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d02d67a3a5f495cdec69fb1ed9f47e76f8de1a352b868c3e28ccaa6073874a`  
		Last Modified: Tue, 19 Dec 2017 23:20:23 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf44c4ea453a9042e7caccb8a2c3fe2847441ceb5f1279b5a97833e9fa610c`  
		Last Modified: Tue, 19 Dec 2017 23:20:23 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
