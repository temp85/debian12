#!/bin/bash
wget https://dl.thorium.rocks/debian/dists/stable/thorium.list
sudo mv thorium.list /etc/apt/sources.list.d/
sudo add-apt-repository ppa:papirus/papirus -y
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo -y
sudo apt update
sudo apt install kwrite htop neofetch git thorium-browser preload qt5-style-kvantum qt5-style-kvantum-themes software-properties-common apt-transport-https ibus ibus-bamboo wget remmina -y
wget -O- https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor | sudo tee /usr/share/keyrings/vscode.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/vscode.gpg] https://packages.microsoft.com/repos/vscode stable main | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt install code -y
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
sudo apt install fonts-jetbrains-mono fonts-hack fonts-firacode fonts-roboto fonts-open-sans fonts-font-awesome fonts-powerline -y
cd ~/Downloads/
ls
git clone https://github.com/L4ki/Wings-Plasma-Themes.git
cd Wings-Plasma-Themes/
mkdir -p ~/.local/share/plasma/look-and-feel/
mkdir -p ~/.local/share/plasma/desktoptheme/
mkdir -p ~/.local/share/aurorae/themes/
mkdir -p ~/.local/share/color-schemes/
mkdir -p ~/.local/share/icons/
mkdir -p ~/.local/share/wallpapers/
sudo mkdir -p /usr/share/sddm/themes/

cp -R Wings\ Global\ Themes/* ~/.local/share/plasma/look-and-feel/
cp -R Wings\ Plasma\ Themes/* ~/.local/share/plasma/desktoptheme/
cp -R Wings\ Window\ Decorations/* ~/.local/share/aurorae/themes/
cp -R Wings\ Color\ Schemes/* ~/.local/share/color-schemes
cp -R Wings\ Icons\ Themes/* ~/.local/share/icons/
cp -R Wings\ Konsole\ Color\ Schemes/* ~/.local/share/konsole/
cp -R Wings\ Wallpapers/* ~/.local/share/wallpapers/
cp -R Wings\ Splshscreens/* ~/.local/share/plasma/look-and-feel/
sudo cp -R ~/Downloads/Wings-Plasma-Themes/Wings\ SDDM\ Themes/* /usr/share/sddm/themes/



#Install Zsh
cd ~/Downloads
echo "Install Zsh"
sudo apt install zsh -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sudo chsh -s $(which zsh)

# add to .zshrc zsh_theme="powerlevel10k/powerlevel10k"




