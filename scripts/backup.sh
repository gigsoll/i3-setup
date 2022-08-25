#!/usr/bin/bash

mkdir ~/BACKUP
mkdir ~/BACKUP/.config/

# Задаємо змінні
alacritty=$(ls $HOME/.config/ | grep alacritty)
bashtop=$(ls $HOME/.config/ | grep bashtop)
cava=$(ls $HOME/.config/ | grep cava)
fish=$(ls $HOME/.config/ | grep fish)
flameshot=$(ls $HOME/.config/ | grep flameshot)
i3=$(ls $HOME/.config/ | grep i3)
neofetch=$(ls $HOME/.config/ | grep neofetch)
nitrogen=$(ls $HOME/.config/ | grep nitrogen)
omf=$(ls $HOME/.config/ | grep omf)
polybar=$(ls $HOME/.config/ | grep polybar)
spicetify=$(ls $HOME/.config/ | grep spicetify)
spotify=$(ls $HOME/.config/ | grep spotify)
touchegg=$(ls $HOME/.config/ | grep touchegg)
wallpaper=$(ls $HOME/.config/ | grep wallpaper)


# Фільруємо
if [[ $alacritty == alacritty ]]; then
	cp -r $HOME/.config/alacritty ~/BACKUP/.config
	rm -rf $HOME/.config/alacritty
	echo "Folder $HOME/.config/alacritty backuped"
fi

if [[ $bashtop == bashtop ]]; then
	cp -r $HOME/.config/bashtop $HOME/BACKUP/.config
	rm -rf $HOME/.config/bashtop
	echo "Folder $HOME/.config/bashtop backuped"
fi

if [[ $cava == cava ]]; then
	cp -r $HOME/.config/cava $HOME/BACKUP/.config
	rm -rf $HOME/.config/cava
	echo "Folder $HOME/.config/cava backuped"
fi

if [[ $fish == fish ]]; then
	cp -r $HOME/.config/fish $HOME/BACKUP/.config
	rm -rf $HOME/.config/fish
	echo "Folder $HOME/.config/fish backuped"
fi

if [[ $flameshot == flameshot ]]; then
	cp -r $HOME/.config/flameshot $HOME/BACKUP/.config
	rm -rf $HOME/.config/fish
	echo "Folder $HOME/.config/fish backuped"
fi

if [[ $i3 == i3 ]]; then
	cp -r $HOME/.config/i3 $HOME/BACKUP/.config
	rm -rf $HOME/.config/i3
	echo "Folder $HOME/.config/i3 backuped"
fi

if [[ $neofetch == neofetch ]]; then
	cp -r $HOME/.config/neofetch $HOME/BACKUP/.config
	rm -rf $HOME/.config/neofetch
	echo "Folder $HOME/.config/neofetch backuped"
fi

if [[ $nitrogen == nirogen ]]; then
	cp -r $HOME/.config/nirogen $HOME/BACKUP/.config
	rm -rf $HOME/.config/nirogen
	echo "Folder $HOME/.config/nirogen backuped"
fi

if [[ $omf == omf ]]; then
	cp -r $HOME/.config/omf $HOME/BACKUP/.config
	rm -rf $HOME/.config/omf
	echo "Folder $HOME/.config/omf backuped"
fi

if [[ $polybar == polybar ]]; then
	cp -r $HOME/.config/polybar $HOME/BACKUP/.config
	rm -rf $HOME/.config/polybar
	echo "Folder $HOME/.config/polybar backuped"
fi

if [[ $spicetify == spicetify ]]; then
	cp -r $HOME/.config/spicetify $HOME/BACKUP/.config
	rm -rf $HOME/.config/spicetify
	echo "Folder $HOME/.config/spicetify backuped"
fi

if [[ $spotify == spotify ]]; then 
	cp -r $HOME/.config/spotify $HOME/BACKUP/.config
	rm -rf $HOME/.config/spotify
	echo "Folder $HOME/.config/spotify backuped"
fi

if [[ $touchegg == touchegg ]]; then
	cp -r $HOME/.config/touchegg $HOME/BACKUP/.config
	rm -rf $HOME/.config/touchegg
	echo "Folder $HOME/.config/touchegg backuped"
fi

if [[ $wallpaper == wallpaper ]]; then
	cp -r $HOME/.config/wallpaper $HOME/BACKUP/.config
	rm -rf $HOME/.config/wallpaper
	echo "Folder $HOME/.config/wallpaper backuped"
fi

cp .vimrc ~/BACKUP/.vimrc

echo "Done"

