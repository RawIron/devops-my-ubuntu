#!/bin/bash

tags="$1"
test_tags=""

python_tags="python pydata stats"
lang_tags="cpp elixir haskell java"
app_tags="office media"
tool_tags="ops aws devtools"

if [[ ${tags} ]]; then
    test_tags=${tags}
else
    test_tags="setup ops python pydata devtools cpp haskell"
fi
#
# --tags=systools

# test syntax on all roles
ansible-playbook deploy.yml --syntax-check

# test tags
for tag in ${test_tags}; do
    ansible-playbook deploy.yml --tags=${tag}
    rc=$?
    if [[ ${rc} -ne 0 ]]; then
        exit ${rc}
    fi
done
