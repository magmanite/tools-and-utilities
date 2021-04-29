# BUILD: magmanite/angular-cli:2021.04.29
# REQUIRE: npm-cli

FROM magmanite/npm-cli:2021.04.29
RUN npm install -g @angular/cli \
    && npm cache clean --force
ENTRYPOINT [ "/usr/local/bin/ng" ]
