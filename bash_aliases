# Color support
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls="ls --color=auto"
  alias dir="dir --color=auto"
  alias vdir="vdir --color=auto"
  alias grep="grep --color=auto"
  alias fgrep="fgrep --color=auto"
  alias egrep="egrep --color=auto"
  alias diff="diff --color=auto"
fi


# Basics
alias l="ls -lh"
alias la="ls -Ahl"
alias ..="cd ../"
alias ...="cd ../.."
alias tree="tree -I __pycache__ -I wandb"
alias df='df -h' # Human-readable size
alias free='free -m' # Show size in MB
alias v="vim"
alias fzf="fzf --reverse --height=70% --info=inline --border --margin=1 --padding=1"


# Execute last command as root
alias lr='sudo $(history | tail -n 2 | head -n 1 | sed -e "s/^[ ]*[0-9]*[ ]*//g")'


# Git
alias gs="git status"
alias gd="git diff --color"
alias gitl="git log --all --graph --oneline --decorate --branches --tags"
alias gl10="git log --all --graph --oneline --decorate --branches --tags -10"
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit"
alias gc!="git log -n 50 --oneline --no-merges | fzf | cut -c -7 | xargs -o git commit --fixup"
alias gca="git commit --amend"
alias gri="git rebase -i --autostash --autosquash"
alias gps="git push"
alias gpl="git pull"
alias gco="git checkout"


# With great sudo comes great responsabilities
alias pacman="sudo pacman"
alias update="sudo pacman -Syu"
alias aur-update="yay -Syu"
alias clean="pacman -Sc; yay -Sc"
#alias pacrm="pacman -Rns" # -R remove -u cascade but check if other packages depend on it -n no save -s rm dependencis
alias full-update="update; aur-update; clean"
alias fdisk="sudo fdisk"
alias vsudo="sudo vim"
alias mount="sudo mount"
alias umount="sudo umount"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# Bash & Vim shortcuts
alias vrc="vim ~/.vimrc"
alias brc="vim ~/.bashrc"
alias brca="vim ~/.bash_aliases"
alias reload="source ~/.bashrc"


# Developpement related
alias py="python"
alias bp="bpython"
alias pbp="pdev; bpython"
alias pdev="source ~/.venv/bin/activate"
alias jp="jupyter lab"
alias pupdate="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U"

# Shouldn't be needed if auto connect set up is done well
alias hbl="bluetoothctl connect <mac-address>"
alias dhbl="bluetoothctl disconnect <mac-address>"

# Shortcuts to repositories

