FROM alpine:3.3
MAINTAINER "EEA: IDM2 A-Team" <eea-edw-a-team-alerts@googlegroups.com>

ENV CSSLINT_VERSION=0.10.0

RUN apk add --no-cache --virtual .run-deps nodejs \
 && npm install -g csslint@$CSSLINT_VERSION

ENTRYPOINT ["csslint"]
CMD ["/code"]
