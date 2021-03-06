set -eu

# wget everything
wget -O zoom.deb "https://d11yldzmag5yn.cloudfront.net/prod/5.1.422789.0705/zoom_amd64.deb?_x_zm_rtaid=Yepa1F_WTXifdyCPlRxTVQ.1595005181274.70913d864e0a64b6dc9fabf5"
wget -O chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# NVIDIA DRIVER
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get install -y nvidia-driver-440

# # Gnome Tweaks, and extension install -yation
# sudo apt-get install -y gnome-tweaks
# sudo apt-get install -y chrome-gnome-shell

# Chrome
sudo apt-get install -y ./chrome.deb

# zoom
sudo apt install -y ./zoom.deb

# # sdk manager
# sudo apt install -y ./sdkmanager_1.2.0-6738_amd64.deb

# Slack
sudo snap install slack --classic

# VSCode
sudo snap install code --classic

# Atom
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install -y atom

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install -y apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text

# VIM
sudo apt-get install -y vim

# git
sudo apt-get install -y git

# terminator
sudo apt-get install -y terminator

# gparted
sudo apt-get install -y gparted

# Spotify
snap install spotify