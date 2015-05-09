FROM centos:centos6.6

# Install chef and test-kitchen packages
RUN yum install -y sudo \
    openssh-server \
    openssh-clients \
    which \
    curl

# kitchen-docker
RUN yum install -y sudo openssh-server openssh-clients which curl htop
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN mkdir -p /var/run/sshd
RUN useradd -d /home/kitchen -m -s /bin/bash kitchen
RUN echo 'kitchen:kitchen' | chpasswd
RUN echo 'kitchen ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Install the Chef client
RUN curl -L https://www.opscode.com/chef/install.sh | bash

# Install test-kitchen gems
ENV GEM_HOME="/tmp/verifier/gems"
ENV GEM_PATH="/tmp/verifier/gems"
ENV GEM_CACHE="/tmp/verifier/gems/cache"
RUN sudo -u kitchen /opt/chef/embedded/bin/gem install busser --no-ri --no-rdoc
RUN sudo -u kitchen /opt/chef/embedded/bin/gem install busser-serverspec --no-ri --no-rdoc

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
