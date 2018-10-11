FROM alpine:3.6
MAINTAINER ArthurMa <4406arthur@gmail.com>

#for avoiding x509 no roots provided when use TLS
RUN apk --no-cache add ca-certificates libc6-compat

#it's from filebeat-6.2.4-linux-x86_64.tar.gz
ADD bin/filebeat-6.2.4-linux-x86_64.tar.gz /opt
RUN set -x && \
  cd /opt/filebeat-* && \
  cp filebeat /usr/local/bin && \
  rm -rf opt/filebeat*


# Setup work environment
ENV FILEBEAT_PATH /tmp
WORKDIR $FILEBEAT_PATH


ENTRYPOINT ["filebeat"]
CMD ["run"]
