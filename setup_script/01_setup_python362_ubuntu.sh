#!/usr/bin/env bash
# 必要なpackageをinstall
sudo apt-get update
DEBIAN_FRONTEND=noninteractive sudo apt-get -y install git make build-essential python-dev python-pip libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl

# pyenvをinstall
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
source ~/.bashrc

# python3.6.2をinstall
pyenv install 3.6.2
pyenv shell 3.6.2
pyenv rehash

# pyenv local用の.python-versionがあるので3.6.2になるはず
python -V
# pipのpackageをinstall
pip install --requirement requirements.txt