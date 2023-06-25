#!/bin/bash -
###########################################################
# Author:     Christo Deale                  
# Date  :     2023-06-21             
# uniquepass: Utility to generate a Random passwd using GPG             
###########################################################
# Check if GPG is installed
if ! command -v gpg &>/dev/null; then
  echo "GPG is not installed. Installing GPG..."
  if [[ -f /etc/redhat-release ]]; then
    sudo yum install -y gpg
  else
    echo "Unsupported operating system. Please install GPG manually."
    exit 1
  fi
fi

# Prompt for password length
read -p "Enter the desired length of the password: " pass_length

# Generate random password using GPG
random_password=$(gpg --gen-random --armor 2 "$pass_length")

echo "Random Password:"
echo "$random_password"
