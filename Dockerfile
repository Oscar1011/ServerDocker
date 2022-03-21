ARG ALPINE_VER=3.10

FROM lsiobase/alpine:${ALPINE_VER}


COPY ./requirements.txt .

RUN   apk update && \
      apk --no-cache add \
      wget \
      curl \
      tzdata \
      musl-dev \
      python3-dev \
      libxml2-dev \
      gcc \
      libxslt-dev \
      libffi-dev  \
      alpine-sdk \
      chromium \
      chromium-chromedriver \
      py3-pip && \
      cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
      echo "Asia/Shanghai" > /etc/timezone && \
      apk del tzdata && \
      pip3 install --no-cache -r requirements.txt


