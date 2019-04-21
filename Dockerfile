FROM debian:stretch-slim

ARG BUILD_DATE=0000-00-00
ARG VCS_REF=00000000

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/mirageglobe/tinwolf.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0" \
      org.label-schema.name="tinwolf" \
      org.label-schema.description="Docker image with tintin on debian" \
      org.label-schema.url="https://github/mirageglobe/tinwolf"

ENV TERM=xterm
ENV DEPS=apt-utils
ENV APPS=xvfb \
      xorg \
      chromium \
      fluxbox \
      ttf-freefont

# pre update requirements
RUN apt-get update && apt-get install -y --no-install-recommends $DEPS
RUN apt-get install -y $APPS

WORKDIR /opt
EXPOSE 8080

# default init
COPY ./docker-entrypoint.sh /usr/local/bin/

# using tini process manager - https://github.com/krallin/tini
ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--", "docker-entrypoint.sh"]

