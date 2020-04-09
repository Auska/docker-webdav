FROM lsiobase/alpine:3.11

# set version label
LABEL maintainer="Auska"

ENV TZ=Asia/Shanghai RW=true WHITELIST

# copy local files
COPY  root /

RUN \
	echo "**** install packages ****" \
#	&& sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
	&& apk add --no-cache lighttpd lighttpd-mod_webdav lighttpd-mod_auth

# ports and volumes
EXPOSE 80
VOLUME /webdav /config
