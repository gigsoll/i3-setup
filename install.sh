#!/bin/bash	

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

echo "Are you need backup your dotfiles(Y/n)"
read backup
if [[ $backup == y ]] || [[ $backup == Y ]] || [[ $backup == "" ]]; then	
	./scripts/backup.sh
else
		echo "OK"
	./scripts/nobackup.sh
fi

cp -r ./.config $HOME
cp .vimrc $HOME 

./scripts/git.sh

echo "Yay all DONE"
