#/bin/bash
sudo apt install git python3-apt python3-debian pandoc apt-transport-https curl git preload -y

echo "[-] Install [-]"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
echo 'deb http://download.opensuse.org/repositories/home:/lamlng/Debian_Unstable/ /' | sudo tee /etc/apt/sources.list.d/home:lamlng.list
curl -fsSL https://download.opensuse.org/repositories/home:lamlng/Debian_Unstable/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_lamlng.gpg > /dev/null
sudo apt update 
sudo apt install nala brave-browser ibus ibus-bamboo --install-recommends -y
ibus restart
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"

sudo apt install gnome-themes-extra gtk2-engines-murrine sassc -y


mkdir ~/.fonts
cd /home/temp/Downloads
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git 
cd nerd-fonts/
./install.sh
cd ..
rm -rf nerd-fonts

cd ~/Downloads
git clone https://github.com/vinceliuice/Orchis-theme.git

cd Orchis-theme/
./install.sh -l  --tweaks macos
sudo apt install ostree appstream-util flatpak -y
flatpak override --user --filesystem=xdg-config/gtk-4.0
sudo eflatpak override --filesystem=xdg-config/gtk-4.0
cp -r ~/.themes/Orchis-Dark-Compact/gtk-4.0/* ~/.config/gtk-4.0/

cd ~/Downloads/
git clone https://github.com/vinceliuice/Tela-icon-theme.git
cd Tela-icon-theme/
./install.sh
cd ..
rm -rf Tela-icon-theme

cd ~/Downloads
git clone https://github.com/EliverLara/Nordic.git
mv Nordic ~/.themes/





