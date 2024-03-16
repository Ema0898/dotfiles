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

## Installation

First, check out the doftiles repo in your $HOME directory using git

```
$ git clone git@github.com:Ema0898/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
