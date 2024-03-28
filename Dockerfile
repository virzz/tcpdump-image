FROM alpine:3

LABEL Organization="Virzz" Author="陌竹 <mozhu233@outlook.com>"

RUN apk add --no-cache tcpdump

COPY --chown=root:root --chmod=0777 run.sh /run.sh

WORKDIR /data

ENTRYPOINT ["/run.sh"]