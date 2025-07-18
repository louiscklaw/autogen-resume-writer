FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntujammy

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="thelamer"

# title
ENV TITLE=kasm-baseline

RUN apt-get update
RUN apt-get install -qqy wget git curl

# Install Chrome
RUN cd /tmp && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN cd /tmp && apt-get install -qqy ./google-chrome-stable_current_amd64.deb
RUN rm -f /tmp/google-chrome-stable_current_amd64.deb

RUN apt install -qqy make
RUN apt install -qqy build-essential
RUN apt install -qqy libssl-dev
RUN apt install -qqy zlib1g-dev
RUN apt install -qqy libbz2-dev
RUN apt install -qqy libreadline-dev
RUN apt install -qqy libsqlite3-dev
RUN apt install -qqy curl
RUN apt install -qqy git
RUN apt install -qqy libncursesw5-dev
RUN apt install -qqy xz-utils
RUN apt install -qqy tk-dev
RUN apt install -qqy libxml2-dev
RUN apt install -qqy libxmlsec1-dev
RUN apt install -qqy libffi-dev
RUN apt install -qqy liblzma-dev


## install pyenv

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN true

RUN curl https://pyenv.run | bash

ENV HOME "/config"
ENV PYENV_ROOT "$HOME/.pyenv"
ENV PATH "${PYENV_ROOT}/shims:${PYENV_ROOT}/bin:${PATH}"

RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
RUN echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(pyenv init -)"' >> ~/.bashrc

RUN pyenv install 3.11
RUN pyenv global 3.11

RUN chown -R 1000:1000 /config/.pyenv

## install conda
RUN apt-get update && apt-get install -y wget bash
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh
RUN chmod +x /tmp/miniconda.sh
RUN /tmp/miniconda.sh -b -p /opt/conda
RUN rm /tmp/miniconda.sh
RUN /opt/conda/bin/conda init
# RUN /opt/conda/bin/conda activate base
# RUN conda config --add channels conda-forge
# RUN conda config --set always_yes yes
RUN echo 'PATH="/opt/conda/bin:$PATH"' >> ~/.bashrc

RUN chown -R 1000:1000 /config/.conda

# Set up the working directory
WORKDIR /app

# ports and volumes
EXPOSE 3000

VOLUME /config
