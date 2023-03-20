ARG BUILD_FROM=alpine:latest
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

WORKDIR linux-dash

COPY . .

# Setup base
ARG BUILD_ARCH=amd64
RUN apk add nodejs npm && npm install --production

CMD [ "node", "./app/server/index.js" ]

EXPOSE 80