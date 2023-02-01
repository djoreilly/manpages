FROM docker.io/library/alpine

RUN apk add --update --no-cache man-db

ADD slemicro53-manpages.tar.gz .

RUN mkdir -p /var/cache/man && chown man:man /var/cache/man && mandb

USER man:man

LABEL org.opencontainers.image.title="SLE Micro 5.3 man pages"
LABEL org.opencontainers.image.description="Man pages extracted from SLE-Micro-5.3-DVD-x86_64-Beta2-Media1.iso"

