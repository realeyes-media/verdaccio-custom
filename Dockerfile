FROM verdaccio/verdaccio:4.1.0

USER root
ARG plugins="verdaccio-audit verdaccio-s3-storage verdaccio-bitbucket"
RUN yarn add $plugins
USER $VERDACCIO_USER_UID
