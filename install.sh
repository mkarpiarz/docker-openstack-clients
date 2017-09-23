#!/bin/sh

# Install
apt-get update
apt-get install -y \
    python \
    ansible

# Deploy openstackclient
cd /tmp/ansible-install-clients
ansible-playbook install-openstack-clients.yml

# Cleanup
apt-get remove -y --auto-remove \
    ansible
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/.cache
