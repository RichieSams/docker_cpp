FROM alpine:3.7

RUN apk add --no-cache \
        g++ \
        gcc \
		make \
        cmake

COPY docker-entrypoint.sh /
RUN chmod a+x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/sh"]
