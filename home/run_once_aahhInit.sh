#!/bin/bash

set -e

# Check if brew is installed
if [[ -x $(command -v brew) ]]; then
	echo "Homebrew is already installed."
else
	echo "Installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Check if ansible is installed
if brew list ansible &>/dev/null; then
	echo "Ansible is already installed."
else
	# Install ansible
	echo "Installing ansible..."
	brew install ansible
fi

ansible-playbook ~/.config/ansible/slay.yml --ask-become-pass

echo "Ansible install completed"
