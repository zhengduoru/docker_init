#!/bin/bash
# get the build tools 
sudo yum groupinstall "Development Tools" -y

# install ncurses
sudo yum install ncurses-devel -y

# download libevent src
sudo cp libevent-2.0.21-stable.tar.gz /usr/local/src
sudo cp tmux-2.7.tar.gz /usr/local/src


cd /usr/local/src
# sudo curl -L https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz -o libevent-2.0.21-stable.tar.gz
sudo tar xzf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
sudo ./configure && sudo make
sudo make install
sudo ln -s /usr/local/lib/libevent-2.0.so.5 /usr/lib64/libevent-2.0.so.5


cd /usr/local/src
# sudo curl -L https://github.com/tmux/tmux/releases/download/2.7/tmux-2.7.tar.gz -o tmux-2.7.tar.gz
sudo tar -xvzf tmux-2.7.tar.gz
cd tmux-2.7
sudo ./configure && sudo make
sudo make install


