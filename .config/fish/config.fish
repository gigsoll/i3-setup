if status is-interactive

## Не чіпати
set fish_greeting


## Аліаси
alias ls='lsd -A'
alias la='lsd -A'
alias lf='lsd -FlA'
alias ..='cd ..'
alias pacman='sudo pacman --noconfirm'
alias svim='sudo vim'
alias snau='sudo nautilus'
alias cat='bat'
alias du='sudo du -sh'
alias nord='python ~/ImageGoNord/src/cli.py'
alias fan-start='sudo nbfc start'
alias fan-stop='sudo nbfc stop'
fish_add_path -m ~/.local/bin
end
