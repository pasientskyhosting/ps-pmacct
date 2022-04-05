FROM alpine:3.15

RUN apk add --update \
        pmacct \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/sbin/pmacctd", "-f", "/etc/pmacctd.conf"]
