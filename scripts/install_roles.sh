#!/usr/bin/env bash

# Installs all Ansible roles used in this project into ansible/roles.
# Run this to create a baseline of the concrete role versions used.

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

source "$REPO_ROOT/ansible/activate"

for req_file in "$REPO_ROOT"/packer/*/playbook/requirements.yml; do
    if [ -f "$req_file" ]; then
        ansible-galaxy install -r "$req_file"
    fi
done

ansible-galaxy install -r "$REPO_ROOT/ansible/requirements.yml"
