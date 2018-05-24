FROM alpine:3.7

RUN apk add --no-cache \
        g++ \
        gcc \
		make \
        cmake \
		curl-dev

COPY docker-entrypoint.sh /
RUN chmod a+x /docker-entrypoint.sh

RUN mkdir /app
WORKDIR /app

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/sh"]
