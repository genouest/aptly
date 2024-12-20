FROM debian:bookworm

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y aptly bzip2 \
        gnupg2 \
        gpgv \
        graphviz \
        xz-utils \
        apt-utils \
        gettext-base \
        bash-completion

ENTRYPOINT ["aptly", "serve", "-listen=:8080"]
