FROM gitpod/workspace-base:2022-09-03-08-31-56

ARG DDEV_VERSION="v1.19.5"
RUN curl -fsSL https://raw.githubusercontent.com/drud/ddev/master/scripts/install_ddev.sh | bash -s "$DDEV_VERSION"
