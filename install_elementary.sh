set -eu

sudo add-apt-repository ppa:elementary-os/stable
sudo add-apt-repository ppa:elementary-os/os-patches
sudo apt update
sudo apt install elementary-desktop

# Enable Pantheon greeter, change the order # to be the largest, i.e. 51 instead of 40
echo /usr/share/lightdm/lightdm.conf.d/40-io.elementary.greeter.conf

# Configure Pantheon greeter, uncomment lines in
echo /etc/lightdm/io.elementary.greeter.conf

# GTK dark theme for certain apps, change desktop files, work for subl, not vscode slack
echo GTK_THEME=elementary:dark subl

# Set backlight so it is not always full, some NVIDIA driver bug
sudo apt-get install -y xbacklight

# Acceleration Profile for Trackpoint
# xinput set-prop "$device" 'libinput Accel Profile Enabled' {0,1}
# xinput set-prop "$device" 'libinput Accel Speed' 0.5

# Use GPU for Xorg, prevent gala using too much CPU