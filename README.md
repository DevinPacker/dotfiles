# Introduction

Like many, I manage my dotfiles using [GNU Stow](https://www.gnu.org/software/stow/). I opted for stow over alternatives because it is light-weight, available on most package managers, and gives the freedom to organize your dotfile packages however you like (by software, environment, machine, etc.).

## Using Stow

### TL;DR for Stow

The basic idea behind stow is that each folder in the _stow directory_ is a package containing the tree structure that should be mirrored in the _target directory_. In the case of this repository, the _stow directory_ is the root of the repository, and the _target directory_ is your home folder.

When you stow (install) a package, the software tries to add the tree structure to the target directory using as few symlinks as possible. If stow comes across a file in the target directory that is not a symlink, it assumes a conflict and refuses to proceed. See the Stow man page for more information about how to resolve such conflicts.

When you unstow (uninstall) a package, the software will remove the the symlinks, effectively removing the dotfiles from your home folder.

### Installing Packages

```sh
# Make sure stow is installed.
sudo apt -y install stow

# Clone the repository, preferably to your home directory.
git clone https://github.com/DevinPacker/dotfiles.git
cd dotfiles

# Installing a package.
# You may omit the target folder argument if you've cloned
# the repository to your home directory (~/dotfiles).
stow <package-name> -t ~
```

### Uninstalling Packages

```sh
# Navigate to the repository.
cd dotfiles

# Uninstalling a package.
# You may omit the target folder argument if you've cloned
# the repository to your home directory (~/dotfiles).
stow -d <package-name> -t ~
```

### Dry-Run Operations

If you are worried about what stow will do to your file system, you can test operations by using a combination of the _simulate_ and _verbosity_ flags.

```sh
# Simulate Stowing Package
stow <package-name> -t ~ --simulate -v

# Simulate Unstowing Packages
stow -d <package-name> -t ~ --simulate -v
```

# Packages

## Polybar

### Install (Debian)

> Note: I ran into trouble with the _include-file_ option in my polybar config when using the version hosted in the repository below. I compiled version 3.0.5 from source and the _include-file_ option now works. Instructions for compiling can be found [here](https://github.com/jaagr/polybar/wiki/Compiling) on polybar's Github wiki.
>
> If compiling from source on <= Ubuntu 16.04 you will need to install the __libxcb-xrm-dev__ package from a ppa.
>
> ```sh
> sudo add-apt-repository ppa:aguignard/ppa
> sudo apt-get update
> sudo apt-get install libxcb-xrm-dev
> ```

```sh
wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -cs)-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'
sudo apt-get update
sudo apt-get install polybar
```

#### Icons

Most icons are from either [Material Design Icons](https://materialdesignicons.com/) or [Font Awesome](http://fontawesome.io/). Download the fonts and place it in your _.fonts_ folder and update the font cache using `fc-cache -fv`.

## termite

To install on Ubuntu, it is recommended to use Corwind's install script located [here](https://github.com/Corwind/termite-install/blob/master/termite-install.sh). A copy is included here for convenience (but may not be up-to-date).

## zsh

### Framework

* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

### Plugins

* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

### Themes

Some themes require [patched fonts](https://github.com/powerline/fonts) to display symbols correctly. These patched fonts do not overwrite existing fonts on the system and have "for Powerline" in their name.

* [Spaceship](https://github.com/denysdovhan/spaceship-zsh-theme)

### Additional Resources

* [How to Install ZSH](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Patched Powerline Fonts](https://github.com/powerline/fonts)
