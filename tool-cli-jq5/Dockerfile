# BUILD: magmanite/tool-cli-json5:2021.03.26

FROM node:alpine3.13
RUN npm install --global json5 \
    && npm cache clean --force \
    && apk update \
    && apk add jq \
    && rm -rf /var/cache/apk/*
COPY to-image/entry.sh /usr/local/bin/
ENTRYPOINT [ "/usr/local/bin/entry.sh" ]
