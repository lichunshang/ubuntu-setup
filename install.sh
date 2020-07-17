# NVIDIA DRIVER
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get install nvidia-driver-440

# # Gnome Tweaks, and extension installation
# sudo apt-get install gnome-tweaks
# sudo apt-get install chrome-gnome-shell

# Chrome
sudo apt-get install ./google-chrome-stable

# Slack
sudo snap install slack --classic

# VSCode
sudo snap install code --classic

# Atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# VIM
sudo apt-get install vim

# git
sudo apt-get install git

# terminator
sudo apt-get install terminator

# gparted
sudo apt-get install gparted

# Spotify
snap install spotify

# zoom
