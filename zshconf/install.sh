##!/bin/sh
dir=$(dirname "$0")
ln -fs $(pwd)/zshrc ~/.zshrc
src='/tmp/.src_'
if [ -d $src ]; then
    rm -rf $src
fi
mkdir $src
yum --enablerepo=base --enablerepo=updates install -y ncurses-devel
curl 'http://www.zsh.org/pub/zsh-5.2.tar.gz' | tar -xzf - -C $src
cd $src/zsh-5.2
./configure
make && make install
echo $(which zsh) >> /etc/shells
chsh -s $(which zsh)
sh -c "$(wget --no-check-certificate https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
cd $dir
mkdir -p $src/aj
git clone git://github.com/joelthelion/autojump.git $src/aj
python $src/aj/install.py
cd $dir
source ~/.zshrc
