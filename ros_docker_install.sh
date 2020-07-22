set -eu

sudo apt-get install -y wget
sudo apt-get install -y htop
sudo apt-get install -y ros-${ROS_DISTRO}-rqt*



wget -O vscode.deb https://az764295.vo.msecnd.net/stable/17299e413d5590b14ab0340ea477cdd86ff13daf/code_1.47.2-1594837870_amd64.deb
sudo apt-get install -y ./vscode.deb
code --install-extension Shan.code-settings-sync