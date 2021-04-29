# BUILD: magmanite/npm-cli:2021.04.29

FROM node:16.0.0-slim
RUN npm install -g npm@7.11.1 \
    && npm cache clean --force
ENTRYPOINT [ "/usr/local/bin/npm" ]
