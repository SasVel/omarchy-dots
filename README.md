# Omarchy dotfiles
Should be used on top of the default Omarchy installation, all of these files are
for the home directory

---
## Required packages
 - git
 - stow

```
sudo pacman -S git stow
```

## Setup
 - Pull the dotfiles
 ```
 git clone git@github.com:SasVel/EOS-i3-dotfiles.git
 ```
 - Run stow setup in your dotfiles folder
 ```
 stow --adopt .
 ```
 - Run setup.sh if available.

## Useful commands
 - Check file tree (requires "tree" package)
 ```
 tree -I ".git" -I "Pictures"  -a [directory]
 ```
 - Check if files are symlinks
 ```
 ls -lah [directory]
 ```
