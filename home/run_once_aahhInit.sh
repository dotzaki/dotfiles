#!/bin/bash

set -e

# Check if brew is installed
if [[ -x $(command -v brew) ]]; then
	echo "Homebrew is already installed."
else
	echo "Installing Homebrew..."
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Add the homebrew install to the $PATH
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(/opt/homebrew/bin/ shellenv)"

# Check if ansible is installed
if brew list ansible &>/dev/null; then
	echo "Ansible is already installed."
else
	# Install ansible
	echo "Installing ansible..."
	brew install ansible
fi

ansible-galaxy collection install community.general

ansible-playbook ~/.config/ansible/slay.yml -vv --ask-become-pass

echo "Ansible install completed"
