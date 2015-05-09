FROM centos:centos6.6

# Install chef and test-kitchen packages
RUN yum install -y sudo \
    openssh-server \
    openssh-clients \
    which \
    curl

# Install the Chef client
RUN curl -L https://www.opscode.com/chef/install.sh | bash

# Install build essentials packages
RUN yum install -y tar \
    autoconf \
    bison \
    flex \
    gcc \
    gcc-c++ \
    kernel-devel \
    make \
    m4 \
    patch

# Download and cache Redis locally
RUN curl -o /usr/local/redis-2.8.17.tar.gz \
    http://download.redis.io/releases/redis-2.8.17.tar.gz
