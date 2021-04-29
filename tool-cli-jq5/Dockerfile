# BUILD: magmanite/tool-cli-jq5:2021.04.29

FROM node:alpine3.13
RUN npm install --global json5 \
    && npm cache clean --force \
    && apk update \
    && apk add jq \
    && rm -rf /var/cache/apk/*
COPY copy-to-image/entry.sh /usr/local/bin/
ENTRYPOINT [ "/usr/local/bin/entry.sh" ]
