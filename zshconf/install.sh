#!/bin/sh
src='/tmp/.src'
mkdir $src
if [ -d $src ]; then
    rm -rf $src
fi
mkdir /tmp/.src_ && cd /tmp/.src
curl 'http://www.zsh.org/pub/zsh-5.2.tar.gz' | tar -xzf -
zsh-5.2/config
make && make install
chsh -s $(which zsh)
echo $SHELL
sh -c "$(wget --no-check-certificate https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd $(dirname "$0")
ln -fs $(pwd)/zshrc ~/.zshrc
cd $src
git clone git://github.com/joelthelion/autojump.git
autojump/install.py
source ~/.zshrc
