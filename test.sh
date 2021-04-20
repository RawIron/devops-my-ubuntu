#!/bin/bash

# test syntax on all roles
ansible-playbook --inventory=hosts --connection=local site.yml --syntax-check

# setup user env
ansible-playbook --inventory=hosts --connection=local site.yml --tags=setup

# test roles
ansible-playbook --inventory=hosts --connection=local site.yml --tags=ops
ansible-playbook --inventory=hosts --connection=local site.yml --tags=python
ansible-playbook --inventory=hosts --connection=local site.yml --tags=pydata
ansible-playbook --inventory=hosts --connection=local site.yml --tags=devtools

#ansible-playbook --inventory=hosts --connection=local site.yml --tags=systools

# erlang, elixir conflicts with pre-installed versions of travis-ci
#ansible-playbook --inventory=hosts --connection=local site.yml --tags=erlang
