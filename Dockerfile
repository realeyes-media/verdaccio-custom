FROM verdaccio/verdaccio:4.0.1

USER root
RUN chown -R $VERDACCIO_USER_UID:root .
USER $VERDACCIO_USER_UID
ARG plugins="verdaccio-audit verdaccio-s3-storage verdaccio-bitbucket"
RUN yarn add $plugins
