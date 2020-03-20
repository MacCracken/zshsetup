#!/bin/bash

# Sudo or Su
# Install zsh
apt install zsh

# Change shell to zsh
chsh -s /usr/bin/zsh $(whoami)

# Curl OHMYZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Git clone p10k Theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

sed 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k/powerlevel10k"/g' ~/.zshrc > ~/.zshrc
echo "alias ll='ls -FGlAhp'  # Preferred 'ls' implementation" > ~/.zshrc

mkdir ~/.fonts
cd ~/.fonts 
curl https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Regular.ttf --output MesloLG_NF_Regular.ttf
curl https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Bold.ttf --output MesloLGS_NF_Bold.ttf
curl https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Italic.ttf --output MesloLGS_NF_Italic.ttf
curl https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Bold%20Italic.ttf --output MesloLGS_NF_Bold_Italic.ttf

