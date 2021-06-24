# BUILD: magmanite/npm-cli:2021.06.19

FROM node:16.3.0-slim
RUN npm install -g npm@7.11.1 \
    && npm cache clean --force
ENTRYPOINT [ "/usr/local/bin/npm" ]
