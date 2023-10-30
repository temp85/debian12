#!/bin/bash
wget https://dl.thorium.rocks/debian/dists/stable/thorium.list
sudo mv thorium.list /etc/apt/sources.list.d/
sudo add-apt-repository ppa:papirus/papirus -y
sudo apt update
sudo apt install kwrite htop neofetch git thorium-browser preload qt5-style-kvantum qt5-style-kvantum-themes -y
cd Downloads/
ls
git clone https://github.com/L4ki/Wings-Plasma-Themes.git
cd Wings-Plasma-Themes/
cp -r Wings\ Global\ Themes/* ~/.local/share/plasma/look-and-feel/
cp -R Wings\ Plasma\ Themes/* ~/.local/share/plasma/desktoptheme/
cp -R Wings\ Window\ Decorations/* ~/.local/share/aurorae/themes/
cp -R Wings\ Color\ Schemes/* ~/.local/share/color-schemes
cp -R Wings\ Icons\ Themes/* ~/.local/share/icons/
cp -R Wings\ Konsole\ Color\ Schemes/* ~/.local/share/konsole/
sudo cp -R ~/Downloads/Wings-Plasma-Themes/Wings\ SDDM\ Themes/* /usr/share/sddm/themes/
