RG ALPINE_VER=3.10

FROM lsiobase/alpine:${ALPINE_VER}




RUN   apk --no-cache add \
      wget \
      curl \
      supervisor \
      tzdata \
      musl-dev \
      python3-dev \
      libxml2-dev \
      gcc \
      libxslt-dev \
      libffi-dev  \
      alpine-sdk \
      py3-pip && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
      echo "Asia/Shanghai" > /etc/timezone && \
      apk del tzdata



