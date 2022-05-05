FROM --platform=$BUILDPLATFORM alpine:latest as builder

WORKDIR /usr/local
COPY . .

ARG TARGETPLATFORM

RUN set -ex && \
    apk --no-cache add ca-certificates wget unzip
RUN ash ./download.sh

FROM alpine:latest

COPY --from=builder /usr/local/xray/xray /usr/local/bin/xray/
COPY --from=builder /usr/local/xray/geoip.dat /usr/local/bin/xray/
COPY --from=builder /usr/local/xray/geosite.dat /usr/local/bin/xray/
COPY config.json /etc/xray/config.json

RUN set -ex && \
    apk --no-cache add ca-certificates && \
    mkdir /var/log/xray/ && \
    chmod +x /usr/local/bin/xray/xray

ENV PATH /usr/local/bin/xray:$PATH

CMD ["xray", "run", "-config=/etc/xray/config.json"]
