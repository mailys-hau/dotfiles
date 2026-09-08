# Dotfiles

Set of configuration files used for my i3 + Manjaro set up. You will need the following packages:

- official `alacritty autorandr brightnessctl jq maim pavucontrol playerctl polybar ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols-mono noto-fonts-emoji`
- AUR `i3color-lock xautolock`

These configuration files use [Zen browser](https://zen-browser.app/), but use your favourite one.



## Window Manager
### 1. I3
Put in `~/.i3/`. Install `maim`, `playerctl`, `brightness`, `xautolock` for various bindings set in the configuration file.


### 2. Status bar
Put in `~/.config/`.

Uses [polybar](https://github.com/polybar/polybar). Colour theme is based on screen [wallpaper](./images/avatar-ang.png), with some accent colours from wellknown [gruvbox theme](https://gruvbox.org/).

Remember to:
- install relevant fonts
    - TTF Nerd
    - Noto Emoji
- install `jq` to parse weather data and soud-device information
- make `./polybar/launch.sh` and anything in `./polybar/scripts` executable

_Heavily constructed with help of AI agents._

### 3. Lock
Put in `~/.i3/`. Install `i3lock-color`.

### 4. Wallpapers
[_Under The Tree_](https://www.deviantart.com/booter-freak/art/Under-The-Tree-289318837) by Booter-Freak is the main wallpapers. [`chihiro-train-sunset.jpg`](./images/chihiro-train-sunset.jpg) is the one used as greeting screen.
##### Background
Fix path to your background image in `fehbg` and put it in your home as hidden file. Remember to make the file executable

##### Greeting screen
Put wanted image in `/usr/share/backgrounds` and `slick-greeter.conf` in `/etc/lightdm/` assuming you use LightDM as greeter.


### 5. Picom
Put in `~/.config/`
Most of this config is generated automatically. The relevant modified/added lines are lines 107 to 151. They set:
- overall window transparency
- background blurring on the wallpaper behind terminal

### 6. Autorandr
Easy dual monitor setup. Make `10-wallpaper` and `20-move-workspace` executable and place them in `~/.config/autorand/postswitch.d`. The first one is redundant with `.fehbg`, the second move all workspaces to primary when dual monitor is disconnected.




## Development tools
### 1. Shell
Uses [Alacritty](https://alacritty.org/). Colourscheme is based on [wallpaper](./images/avatar-ang.png) and extended with matching greens, purples and blues by a nifty AI agent.
Required and useful installs: `$ pacman -Sy fzf tree git` (provided by Manjaro).


### 2. Vim
Everything's in `vimrc`.


### 3. Python
Added a default `requirements.txt` that I use in any virtual environment.


### 4. SSH
As requested by X. Just put in `~/.ssh/config`.
