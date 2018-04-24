# Introduction

Like many, I manage my dotfiles using [GNU Stow](https://www.gnu.org/software/stow/). I opted for stow over alternatives because it is light-weight, available on most package managers, and gives the freedom to organize your dotfile packages however you like (by software, environment, machine, etc.).

## Using Stow

### TL;DR for Stow

The basic idea behind stow is that each folder in the _stow directory_ is a package containing the tree structure that should be mirrored in the _target directory_. In the case of this repository, the _stow directory_ is the root of the repository, and the _target directory_ is your home folder.

When you stow (install) a package, the software tries to add the tree structure to the target directory using as few symlinks as possible. If stow comes across a file in the target directory that is not a symlink, it assumes a conflict and refuses to proceed. See the Stow man page for more information about how to resolve such conflicts.

When you unstow (uninstall) a package, the software will remove the the symlinks, effectively removing the dotfiles from your home folder.

### Usage

By default the target directory will be the parent of the stow directory. This can be changed via the `-t` flag as shown in the examples below, allowing you to clone the dotfiles repository wherever convenient.

#### Installing Packages

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

#### Uninstalling Packages

```sh
# Navigate to the repository.
cd dotfiles

# Uninstalling a package.
# You may omit the target folder argument if you've cloned
# the repository to your home directory (~/dotfiles).
stow -d <package-name> -t ~
```

#### Dry-Run Operations

If you are worried about what stow will do to your file system, you can test operations by using a combination of the _simulate_ and _verbosity_ flags.

```sh
# Simulate Stowing Package
stow <package-name> -t ~ --simulate -v

# Simulate Unstowing Packages
stow -d <package-name> -t ~ --simulate -v
```

# Additional Resources

*   [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

    Patched fonts that include an assortment of icon packs (FontAwesome, DevIcons, Octicons, Powerline icons, Material Design Icons, etc.)


*   [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

    Popular framework for managing zsh configuration.


*   Zsh Plugins

    *   [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    *   [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)


*   Zsh Themes

    *   [Spaceship](https://github.com/denysdovhan/spaceship-zsh-theme)
