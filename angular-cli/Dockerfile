# BUILD: magmanite/angular-cli:2021.04.03

FROM magmanite/npm-cli:2021.04.03
RUN npm install -g @angular/cli \
    && npm cache clean --force
ENTRYPOINT [ "/usr/local/bin/ng" ]
