# BUILD: magmanite/npm-cli:2021.04.03

FROM node:15.12.0-slim
RUN npm install -g npm@7.8.0 \
    && npm cache clean --force
ENTRYPOINT [ "/usr/local/bin/npm" ]
