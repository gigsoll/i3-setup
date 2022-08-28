#!/bin/sh

echo "Hello Arch"

confroot="${XDG_CONFIG_HOME:-$HOME/.config}"
scriptpath="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 || exit 1 ; pwd -P )"
backprogs="$(cat "$scriptpath/sources/backup.txt")"

printf "Are you need backup your dotfiles(y/n): "
read -r backup
case $backup in
    y*|Y*)
        backdir="BACKUP$(date '+%s')/.config/"
        mkdir -pv "$backdir" || exit 1
        for confdir in ${backprogs}; do
            [ -d "$confroot/$confdir" ] && \
            [ -n "$(ls -A "$confroot/$confdir")" ] && \
                cp -rv "${confroot}/${confdir}" "${backdir}"
        done
    ;;
esac

pacmanp="$(sed -n '2p' "$scriptpath/sources/pacman.txt") git"
sudo pacman -Syu --needed  $pacmanp || exit 1

pacman -Qi yaya > /dev/null || {
    printf "install yay (Y/n): "
    read -r installyay

    case $installyay in
        y*|Y*)
            tmpdir=$(mktemp -d)
            finish() { rm -rf "$tmpdir"; }
            trap finish EXIT

            git clone https://aur.archlinux.org/yay-bin.git "$tmpdir"
            cd "$tmpdir"
            makepkg -sri
            cd "$scriptpath"
            command -v yay >/dev/null || {
                echo "yay not installed"
                exit 1
            }
            yayp="$(sed -n '1p' "$scriptpath/sources/pacman.txt")"
            sudo yay -S --needed $yayp
            systemctl --user enable spotify-listener
		    systemctl --user enable touchegg
        ;;
    esac
}

cp -rv "$scriptpath/.config" "$HOME"
cp "$scriptpath/.vimrc" "$HOME"

. "$scriptpath/scripts/git.sh"

echo "Yay all DONE"
