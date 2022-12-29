#!/usr/bin/env sh
# curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/krparajuli/dotfiles/main/setup.sh | sh 


sudo apt update -y
sudo apt upgrade -y

# Install python and ansible
sudo apt install python3 curl git
curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
python3 /tmp/get-pip.py --user
python3 -m pip install --user ansible

# Clone dotfiles
mkdir ~/MyApplications
cd ~/MyApplications
[ -d "~/MyApplications/dotfiles" ] && git clone https://github.com/kpbeta/dots dotfiles

# Ansible get playbook
ansible-playbook ~/MyApplications/dotfiles/playbooks/all.yaml