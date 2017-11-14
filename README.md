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
