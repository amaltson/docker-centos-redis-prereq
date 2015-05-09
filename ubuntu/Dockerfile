FROM ubuntu:14.04

# Install chef and test-kitchen packages
RUN apt-get update && apt-get install -y sudo \
    openssh-server \
    curl \
    lsb-release

# Install the Chef client
RUN curl -L https://www.opscode.com/chef/install.sh | bash

# Install build essentials packages
RUN apt-get install -y tar \
    autoconf \
    binutils-doc \
    bison \
    build-essential \
    flex \
    gettext \
    ncurses-dev

# Download and cache Redis locally
RUN curl -o /usr/local/redis-2.8.17.tar.gz \
    http://download.redis.io/releases/redis-2.8.17.tar.gz
