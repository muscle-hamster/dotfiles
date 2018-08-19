# dotfiles
Configurations, configs, and confs

### Clone Repo
```
git clone https://github.com/brockMorrison/dotfiles.git
```
### Symlink or move files into home directory
All files need to be either symlinked or moved into your home directory. You can symlink with the following command
```
ln -s <file path> <symlink path>
```
or you can use [Stow](https://www.gnu.org/software/stow/manual/stow.html) by simply using the following command:
```
stow <path of file>
```
### Extras
Extra modules, programs, fonts, themes or shell scripts I am running. Installation instructions for each of these can be found by following the links.

#### Polybar
[polybar](https://github.com/jaagr/polybar)

[Oh My ZSH](https://github.com/robbyrussell/oh-my-zsh)

[rofi](https://github.com/DaveDavenport/rofi)

[System San Fransisco Font](https://github.com/supermarin/YosemiteSanFranciscoFont)

[Ark Remix GTK Theme](https://store.kde.org/p/1214931/)

[gVim](https://www.vim.org/download.php)

[Vim Plug](https://github.com/junegunn/vim-plug)

[i3](https://i3wm.org/)

[Nitrogen](https://wiki.archlinux.org/index.php/nitrogen)

[Compton](https://wiki.archlinux.org/index.php/compton)

[nm-applet](https://wiki.archlinux.org/index.php/NetworkManager)

[pasystray](https://github.com/christophgysin/pasystray)

### Additional Instructions

#### Polybar
All core dependencies for polybar need to be installed for it to work. These can be found on their github page. Any functionality changes can be found in the Polybar config file.

#### Rofi
Any customizations for polybar can be found in the .Xresources file. Rofi no longer supports changing appearence from within the i3 config file.

#### gVim
All plugins and dependencies for gVim can be installed by downloading and installing Vim Plug. Once Vim Plug is installed open Vim and run the following:
```
:PlugInstall!
```
This will install all dependencies for all Vim plugins.
