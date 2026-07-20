FROM rocker/r-ver:4.6.1
LABEL maintainer='brueckmann'

# Provide defaults for binder variables to avoid build-time warnings
ARG NB_USER=rstudio
ARG NB_GID=1000
ENV NB_USER=${NB_USER}
ENV NB_GID=${NB_GID}
ENV HOME=/home/${NB_USER}

USER root

# Install system dependencies needed to build common R packages
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
      git wget ca-certificates \
      build-essential \
      libcurl4-openssl-dev \
      libssl-dev \
      libxml2-dev \
      libgit2-dev \
      libpng-dev \
      libjpeg-dev \
      libfreetype6-dev \
      libharfbuzz-dev \
      libfontconfig1-dev \
      zlib1g-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy repository into user's home and set ownership
COPY --chown=${NB_USER}:${NB_GID} . ${HOME}/project
WORKDIR ${HOME}/project

# Switch to non-root binder user
USER ${NB_USER}
