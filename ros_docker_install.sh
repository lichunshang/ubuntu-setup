set -eu

# -v /usr/share/icons:/usr/share/icons:ro
# -v /usr/share/fonts:/usr/share/fonts:ro

# export RCUTILS_CONSOLE_OUTPUT_FORMAT=""

git config --global user.email "jack@gatik.ai"
git config --global user.name "Jack Li"

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd v)"

sudo cp -R -u -p ${SCRIPT_DIR}/icons /usr/share
sudo cp -R -u -p ${SCRIPT_DIR}/fonts /usr/share

if ! command -v code &> /dev/null
then
	wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
	sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
	sudo apt update
	sudo apt install -y code
fi

sudo apt-get install -y wget
sudo apt-get install -y htop
sudo apt-get install -y ros-${ROS_DISTRO}-rqt*
sudo apt-get install -y byobu

sudo apt-get install -y libasound-dev

sudo apt-get install -y clang-format
sudo apt-get install -y gdb

sudo apt install -y pcl-tools
sudo apt install -y nautilus

sudo bash -c 'echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf'
sudo sysctl -p
cat /proc/sys/fs/inotify/max_user_watches