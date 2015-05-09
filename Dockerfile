FROM centos:centos6.6

# Install the Chef client
RUN curl -L https://www.opscode.com/chef/install.sh | bash
