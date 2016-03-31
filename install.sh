#!/env/bash
yum groupinstall -y "Development Tools"
dir=$(dirname "$0")
bash $dir/vimconf/install.sh
bash $dir/zshconf/install.sh
