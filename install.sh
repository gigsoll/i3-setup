	echo "Hello Arch"
	
	yay=$(whereis yay)
	if [[ $yay == "yay: /usr/bin/yay /usr/share/man/man8/yay.8.gz" ]]; then
		yayp=$(cat ./sourses/pacman.txt | grep i3-gnome)
		yay -S $yayp
		pacmanp=$(cat ./sourses/pacman.txt | grep vim )
		sudo pacman -Syu $pacmanp
		systemctl --user enable spotify-listener
		systemctl --user enable touchegg
	else	
		pacman -Syu --needed git base-devel
		git clone https://aur.archlinux.org/yay-bin.git
		cd yay-bin
		makepkg -si
		cd ..
		yayp=$(cat ./sourses/pacman.txt | grep i3-gnome)
		yay -S $yayp
		pacmanp=$(cat ./sourses/pacman.txt | grep vim )
		sudo pacman -Syu $pacmanp
	  systemctl --user enable spotify-listener
		systemctl --user enable touchegg
	fi

echo "Are you need backup your dotfiles(1/2)
1) Yes
2) No "
read backup
if [[ $backup == 1 ]]; then
	./scripts/backup.sh
else
	echo "OK"
	./scripts/nobackup.sh
fi

cp -r ./.config $HOME
cp .vimrc $HOME 

mkdir Additional
cd Additional
## Install omf
#curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

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






echo "Yay all DONE"

