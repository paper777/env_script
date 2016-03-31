#!/env/bash
yum groupinstall -y "Development Tools"
cd $(dirname "$0")
bash ./vimconf/install.sh
bash ./zshconf/install.sh

ls -fs $(pwd)/gitconfig ~/.gitconfig
ls -fs $(pwd)/screenrc ~/.screenrc
