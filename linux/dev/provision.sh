#!/usr/bin/env bash

# Install all required packages
sudo apt-get -y install build-essential libssl-dev vim git tmux curl

# Install ssh keys
mkdir -p ~/.ssh
cp /vagrant/keypair/id_rsa ~/.ssh
chmod 600 ~/.ssh/id_rsa 

# Install rcm, bring in dotfiles
wget https://thoughtbot.github.io/rcm/debs/rcm_1.2.3-1_all.deb -O /tmp/rcm.deb
sudo dpkg -i /tmp/rcm.deb

ssh-keyscan -H github.com > ~/.ssh/known_hosts
git clone git@github.com:vincecima/dotfiles.git ~/.dotfiles

rcup -fv

# Setup Vundle and install Vim plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Install rbenv & ruby-build
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
source ~/.bash_profile
rbenv install 2.1.2

# Install golang
wget https://storage.googleapis.com/golang/go1.2.2.linux-amd64.tar.gz -O /tmp/go.tar.gz
mkdir -p ~/.go
tar -C ~/.go -xzf /tmp/go.tar.gz --strip-components=1

# Install nvm
git clone https://github.com/creationix/nvm.git ~/.nvm
source ~/.bash_profile
nvm install 0.10