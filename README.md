# Dotfiles

This repository contains some dotfiles configurations

## Requirements

Make sure you have the following install on your system

### Git

```
sudo dnf install git
```

### Stow

```
sudo dnf install stow
```
### Telescope dependencies
```
sudo dnf install ripgrep fd-find tree-sitter-cli
```

## Installation

First, check out the doftiles repo in your $HOME directory using git

```
$ git clone --recursive git@github.com:Ema0898/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow -t ~ <package>
```

## Tmux plugins

Inside tmux, run Ctrl + s to reload and Ctrl + s + I to install the packages

## Nerd Fonts
Download from
https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Hasklig.zip

Instal with

```
$ sudo cp Haskling/*.otf /usr/local/share/fonts
```

Check with
```
$ fc-list | grep Hasklug
```
### Install on Arch
```
$ otf-hasklig-nerd
```
