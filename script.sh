#!/bin/sh

useradd stack

echo "%stack ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/20_stack
su - stack -c "git clone https://git.openstack.org/openstack-dev/devstack /home/stack/devstack"

cd /home/stack/devstack

su stack -c "./stack.sh"
