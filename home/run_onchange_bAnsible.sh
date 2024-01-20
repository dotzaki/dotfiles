#!/bin/bash

# Basically whenever we change anything in the ansible playbook chezmoi apply will run the playbook
# ~/.config/ansible/slay.yml hash: {{ include "~/.config/ansible/slay.yml" | sha256sum }}

if command -v ansible-playbook &>/dev/null; then
	ansible-playbook {{ joinPath .chezmoi.sourceDir "~/.config/ansible/slay.yml" | quote }} --ask-become-pass
fi
