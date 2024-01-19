#!/bin/bash

# Basically whenever we change anything in the ansible playbook chezmoi apply will run the playbook
# ./slay.yml hash: {{ include "./slay.yml" | sha256sum }}

if command -v ansible-playbook &>/dev/null; then
	ansible-playbook {{ joinPath .chezmoi.sourceDir "./slay.yml" | quote }} --ask-become-pass
fi
