FROM python:2.7.10
MAINTAINER Friedrich Lindenberg <friedrich@pudo.org>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && apt-get install -y -q --no-install-recommends \
        curl git python-pip python-virtualenv build-essential python-dev \
        libxml2-dev libxslt1-dev libpq-dev apt-utils ca-certificates less \
        postgresql-client-9.4 unrar-free vim unzip locales antiword unrtf \
	poppler-utils pstotext tesseract-ocr flac lame libmad0 \
	libsox-fmt-mp3 sox zlib1g-dev \
  && apt-get clean && apt-get autoremove -y -q
RUN pip install dataset lxml requests cssselect psycopg2 thready csvkit \
	unicodecsv networkx unidecode six textract xlrd XlsxWriter \
	jsonschema elasticsearch awscli
COPY aws.config /etc
