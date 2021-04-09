# BUILD: magmanite/angular-cli:2021.04.09
# REQUIRE: npm-cli

FROM magmanite/npm-cli:2021.04.09
RUN npm install -g @angular/cli \
    && npm cache clean --force
ENTRYPOINT [ "/usr/local/bin/ng" ]
