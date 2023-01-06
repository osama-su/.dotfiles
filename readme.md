
# my Arch Linux .dotfiles

## Setup
```sh
git init --bare $HOME/.ditfiles
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config remote add origin git@github.com/osama-su/.dotfiles.git
```

## Replication
```sh
git clone --separate-git-dir=$HOME/.dotfiles git@github.com/osama-su/.dotfiles.git .dotfiles-tmp
rsync --recursive --verbose --exclude '.git' .dotfiles-tmp/ $HOME/
rm --recursive .dotfiles-tmp
```

## Configuration
```sh
config config status.showUntrackedFiles no
config remote set-url origin git@github.com/osama-su/.dotfiles.git
```

## Usage
```sh
config status
config add .gitconfig
config commit -m 'Add gitconfig'
config push
```
