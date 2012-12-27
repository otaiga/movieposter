#!/bin/bash

# This file should bootstrap the setup-prereq.sh file.
host="${1:-ubuntu@ec2-54-247-32-142.eu-west-1.compute.amazonaws.com}"
ssh-keygen -R "${host#*@}" 2> /dev/null

echo "****** SCP'ing to $host ..."
scp -i ~/. -r config/provision $host:/home/vagrant/

echo "****** Running setup-prereq.sh..."
ssh -i ~/. "$host" '
. $HOME/provision/bootstrap/setup-prereq.sh'

echo "****** Package install complete..."