FROM debian:wheezy
MAINTAINER Friedrich Lindenberg <friedrich@pudo.org>
LABEL version="1.0"

ENV DEBIAN_FRONTEND noninteractive

RUN echo 'deb http://ftp.de.debian.org/debian wheezy-backports main' >> /etc/apt/sources.list \
  && apt-get update -qq \
  && apt-get install -y -q --no-install-recommends \
        git python2.7 python-pip build-essential python-dev \
        libxml2-dev libxslt1-dev libpq-dev curl apt-utils ca-certificates \
  && apt-get install --force-yes -y -t wheezy-backports nodejs \
  && update-alternatives --install /usr/bin/node nodejs /usr/bin/nodejs 100 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN curl -L https://www.npmjs.org/install.sh | sh \
  && npm install -g bower less \
  && pip install psycopg2 \
  && pip install gunicorn
