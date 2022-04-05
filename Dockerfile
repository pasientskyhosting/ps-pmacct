FROM alpine:3.11.5

RUN apk add --update \
        pmacct \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/sbin/pmacctd", "-f", "/etc/pmacctd.conf"]
