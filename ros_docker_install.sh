set -eu

# -v /usr/share/icons:/usr/share/icons:ro
# -v /usr/share/fonts:/usr/share/fonts:ro

# export RCUTILS_CONSOLE_OUTPUT_FORMAT=""

git config --global user.email "jack@gatik.ai"
git config --global user.name "Jack Li"

sudo cp -R -u -p ./icons /usr/share
sudo cp -R -u -p ./fonts /usr/share

sudo apt-get update
sudo apt-get install -y wget
sudo apt-get install -y htop
sudo apt-get install -y ros-${ROS_DISTRO}-rqt*
sudo apt-get install -y byobu

# wget -O vscode.deb https://az764295.vo.msecnd.net/stable/17299e413d5590b14ab0340ea477cdd86ff13daf/code_1.47.2-1594837870_amd64.deb
sudo apt-get install -y ./vscode.deb
code --install-extension Shan.code-settings-sync