## Mangofiles

My personal [MangoWM](https://github.com/mangowm/mango) for Arch GNU/Linux.

## Install Guide

```sh
git clone https://github.com/kantiankant/mangofiles
cd mangofiles
cp -r * ~/.config/
```

## Stuff inside

- `mango/` (mango configuration file)
- `waybar/` (waybar configuration file)
- `wofi/` (wofi configuration file)
- `foot/` (foot terminal configuration file)

> TODO: add `foot/` directory after I get back from school

## Things that these dotfiles depend on

- `mangowm` (duh)
- `waybar` (bar)
- `wofi` (application launcher)
- `foot` (terminal emulator) 
- `grim + slurp` (screenshots)
- `swayosd` (OSD)


## Basic Binds (please refer to `mango/config.conf` for more keybinds)

- `super+q`: terminal
- `super+w`: close window
- `super+space`: wofi
- `super+e`: yazi
- `super+shift+e`: pkill mango
- `super+n`: switch layout
