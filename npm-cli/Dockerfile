# BUILD: magmanite/npm-cli:2021.04.02

FROM node:15.12.0
RUN npm install -g npm@7.7.6 \
    && npm cache clean --force
ENTRYPOINT [ "/usr/local/bin/npm" ]
