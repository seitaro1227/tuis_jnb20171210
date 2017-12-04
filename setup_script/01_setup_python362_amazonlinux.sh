#!/usr/bin/env bash
# 必要なpackageをinstall
yum -y update 
yum -y install gcc gcc-c++ make git openssl-devel bzip2-devel zlib-devel readline-devel sqlite-devel

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