# sudo add-apt-repository ppa:elementary-os/stable
# sudo add-apt-repository ppa:elementary-os/os-patches
# sudo apt update
# sudo apt install elementary-desktop

# sudo apt-get install pantheon-greeter

# Copy to /etc/lightdm/lightdm.conf
# [Seat:*]
# greeter-session=pantheon-greeter

# cat /etc/gtk-3.0/settings.ini
# [Settings]
# gtk-theme-name = elementary
# gtk-icon-theme-name = elementary
# gtk-fallback-icon-theme = gnome
# gtk-sound-theme-name = ubuntu
# gtk-icon-sizes = panel-menu-bar=24,24
# gtk-font-name = Open Sans 9



# NVIDIA DRIVER
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get install -y nvidia-driver-440

# # Gnome Tweaks, and extension install -yation
# sudo apt-get install -y gnome-tweaks
# sudo apt-get install -y chrome-gnome-shell

# Chrome
sudo apt-get install -y ./google-chrome-stable_current_amd64.deb

# Slack
sudo snap install -y slack --classic

# VSCode
sudo snap install -y code --classic

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
snap install -y spotify

# zoom
sudo apt install -y ./zoom_amd64.deb

# sdk manager
sudo apt install -y ./sdkmanager_1.2.0-6738_amd64.deb