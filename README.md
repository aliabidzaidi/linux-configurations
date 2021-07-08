# linux-configurations
My Linux Configurations


-----------------------------------------------------------------------------------------------------
## Setup Powerline and tmux

sudo add-apt-repository universe
sudo apt install --yes powerline
sudo apt install tmux

vim ~/.bashrc
```
# Powerline configuration
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /usr/share/powerline/bindings/bash/powerline.sh
fi

alias tmux="TERM=screen-256color-bce tmux"

```
source ~/.bashrc

vim ~/.tmux.conf
```
set -g default-terminal "screen-256color"
# source "/usr/share/powerline/bindings/tmux/powerline.conf"
if-shell 'env "$POWERLINE_CONFIG_COMMAND" tmux setup' '' 'run-shell "powerline-config tmux setup"'
# vim: ft=tmux

set -g default-terminal "screen-256color"
```



#### Default

![Light theme screenshot](/terminal-screenshot.PNG)


-----------------------------------------------------------------------------------------------------

## Download install vim and configure powerline


sudo apt install vim

vim $HOME/.vimrc
```
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set laststatus=2
```
-----------------------------------------------------------------------------------------------------
