# BUILD: magmanite/angular-cli:2021.06.19

FROM magmanite/npm-cli:2021.06.19
RUN npm install -g @angular/cli \
    && npm cache clean --force
ENTRYPOINT [ "/usr/local/bin/ng" ]
