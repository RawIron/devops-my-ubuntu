#!/bin/bash

# test syntax on all roles
ansible-playbook --inventory=hosts --connection=local site.yml --syntax-check

# setup user env
ansible-playbook --inventory=hosts --connection=local site.yml --tags=setup

# test roles
ansible-playbook --inventory=hosts --connection=local site.yml --tags=devtools
ansible-playbook --inventory=hosts --connection=local site.yml --tags=systools
