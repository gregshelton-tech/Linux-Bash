#!/bin/bash
# update-system.sh - Update and upgrade packages

if [ -f /etc/debian_version ]; then
    sudo apt update && sudo apt -y upgrade
elif [ -f /etc/redhat-release ]; then
    sudo yum -y update
else
    echo "Unsupported OS"
fi
