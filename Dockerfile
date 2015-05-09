FROM centos:centos6.6

# Install chef and test-kitchen packages
RUN yum install -y sudo \
    openssh-server \
    openssh-clients \
    which \
    curl

# Install the Chef client
RUN curl -L https://www.opscode.com/chef/install.sh | bash
