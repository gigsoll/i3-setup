#!/usr/bin/bash


mkdir Additional
cd Additional
## Install omf
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

## Install vimplug
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/autoload/
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## Coloid
git clone https://github.com/vinceliuice/Colloid-gtk-theme.git
cd Colloid-gtk-theme
./install.sh --tweaks nord
cd ..

git clone https://github.com/vinceliuice/Colloid-icon-theme.git
cd Colloid-icon-theme
./install.sh -s nord
cd ..

## Wallpaper
git clone https://github.com/linuxdotexe/nordic-wallpapers.git
cd nordic-wallpapers
cp -r  wallpapers $HOME/.config/
cd ..
## Spicetify
git clone https://github.com/spicetify/spicetify-themes.git
cd spicetify-themes
cp -r Dribbblish $HOME/.config/spicetify/
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
spicetify apply
