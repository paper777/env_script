#!/env/bash
yum groupinstall -y "Development Tools"
cd $(dirname "$0")
bash ./vimconf/install.sh
bash ./zshconf/install.sh

ln -fs $(pwd)/gitconfig ~/.gitconfig
ln -fs $(pwd)/screenrc ~/.screenrc
