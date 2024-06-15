# My dotfiles (WIP)
This directory contains the dotfiles for my system (currently Xubuntu)

# Requirements
Ensure you have the following installed on your system:

### Git
```
sudo apt install git
```

### Stow
```
sudo apt install stow
```

## Instalation
First, checkout the dotfiles repo in your $HOME directory using git.
```
git clone git@github.com:sbtah/dotfiles.git
cd dotfiles
```

Next, use GNU Stow to create symlinks.
```
stow .
```


