# BUILD: magmanite/npm-cli:2021.04.09

FROM node:15.12.0-slim
RUN npm install -g npm@7.9.0 \
    && npm cache clean --force
ENTRYPOINT [ "/usr/local/bin/npm" ]
